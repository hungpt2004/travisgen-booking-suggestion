import 'dart:convert';
import 'package:auto_router_pkg/app/app_exception.dart';
import 'package:dio/dio.dart';

typedef ResponseParser<T> = T Function(Map<String, dynamic> data);

// ignore: one_member_abstracts
abstract class DataParser<T> {
  void loadData(ResponseParser<T> parser);
}

/// Api response for single item
class ApiResponse {
  late int statusCode;
  bool error = false;
  String? message;
  dynamic dataRaw;

  ApiResponse(Response<dynamic> response, {String? key}) {
    final dataObj = JsonUtils.getMap(response.data);
    error = dataObj['error'] as bool? ?? false;
    dataRaw = dataObj[key ?? '_data'];
    final messageRaw = dataObj['message'] ?? dataRaw;

    if (error) {
      if (messageRaw is String) {
        message = messageRaw;
      } else if (messageRaw is Map) {
        message = messageRaw.values.join('\n');
      } else {
        message = dataRaw is String ? dataRaw as String : null;
      }

      throw ServerException(response.requestOptions.path, message ?? '');
    }
  }
}

class ApiSingleResponse<T> extends ApiResponse implements DataParser<T> {
  T? data;

  ApiSingleResponse(super.response, {super.key});

  @override
  void loadData(ResponseParser<T> parser) {
    data = dataRaw == null ? dataRaw as T? : parser(JsonUtils.getMap(dataRaw));
  }
}

/// Api response for list item
class ApiListResponse<T> extends ApiResponse implements DataParser<T> {
  List<T> data = [];

  ApiListResponse(super.response, {super.key});

  @override
  void loadData(ResponseParser<T>? parser) {
    if (error) {
      return;
    }

    final list = JsonUtils.getMapList(dataRaw);

    if (list.isEmpty) {
      data = [];
    } else {
      data = List<T>.from(list.map((x) => parser?.call(x) ?? x as T));
    }
  }
}

/// Api response for pagination
class ApiPaginationResponse<T> extends ApiResponse implements DataParser<T> {
  Pagination pagination = Pagination(count: 0, page: 0, size: 0);
  List<T> data = [];

  ApiPaginationResponse(super.response, {super.key});

  @override
  void loadData(ResponseParser<T>? parser) {
    if (error) {
      return;
    }

    final json = JsonUtils.getMap(dataRaw);
    final list = JsonUtils.getMapList(json['items']?['data'] != null ? json['items']['data'] : json['items']);

    if (json.isNotEmpty) {
      pagination = Pagination.fromJson(json);
    }

    data = List<T>.from(
      list.map((x) {
        return parser?.call(x) ?? x as T;
      }),
    );
  }
}

class Pagination {
  final int count;
  final int page;
  final int size;

  Pagination({required this.count, required this.page, required this.size});

  factory Pagination.fromJson(Map<String, dynamic> json) {
    return Pagination(
      count: int.tryParse(json['count'].toString()) ?? 0,
      page: int.tryParse(json['page'].toString()) ?? 0,
      size: int.tryParse(json['size'].toString()) ?? 0,
    );
  }

  bool get canLoadMore => size * page < count;
}

class JsonUtils {
  static Map<String, dynamic> getMap(dynamic data) {
    try {
      if (data != null) {
        if (data is Map<String, dynamic>) return data;
        final decoded = jsonDecode(data.toString());
        if (decoded is Map) return decoded as Map<String, dynamic>;
        throw JsonParsingException(data);
      }
    } catch (e) {
      throw JsonParsingException(data);
    }
    return {};
  }

  static List<Map<String, dynamic>> getMapList(dynamic data) {
    final mapList = <Map<String, dynamic>>[];
    if (data == null) return mapList;

    try {
      final items = data is List ? data : jsonDecode(data.toString()) as List<dynamic>;

      for (final item in items) {
        final element = getMap(item);
        mapList.add(element);
      }
    } catch (e) {
      throw JsonParsingException('List : $data');
    }

    return mapList;
  }
}
