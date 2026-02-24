import 'package:auto_router_pkg/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

sealed class AppException implements Exception {
  String payload() {
    return '';
  }
}

class ApiException implements AppException {
  final String? identifier;

  ApiException(this.identifier);

  @override
  String payload() {
    return identifier ?? LocaleKeys.exception_has_error.tr();
  }

  @override
  String toString() {
    return LocaleKeys.exception_has_error.tr();
  }
}

class ApiExceptionConnectivity extends ApiException {
  ApiExceptionConnectivity(super.identifier);

  @override
  String toString() {
    return LocaleKeys.exception_lost_connection.tr();
  }
}

class ApiExceptionUnauthorized extends ApiException {
  ApiExceptionUnauthorized(super.identifier);

  @override
  String toString() {
    return LocaleKeys.exception_unauthorized.tr();
  }
}

class ApiExceptionSocket extends ApiException {
  ApiExceptionSocket(super.identifier);

  @override
  String toString() {
    return LocaleKeys.exception_socket_error.tr();
  }
}

class ServerException extends ApiException {
  final String message;
  ServerException(super.identifier, this.message);

  @override
  String toString() {
    return message;
  }
}

class AppExceptionMalformed extends AppException {
  AppExceptionMalformed();

  @override
  String toString() {
    return LocaleKeys.exception_json_malformed.tr();
  }
}

class AppExceptionError extends AppException {
  final String message;
  AppExceptionError(this.message);

  @override
  String toString() {
    return message;
  }
}

class JsonParsingException extends AppException {
  final dynamic json;

  JsonParsingException(this.json);

  @override
  String toString() {
    return 'JsonParsingException: \nJSON: $json';
  }
}
