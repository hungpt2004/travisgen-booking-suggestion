import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistic.freezed.dart';
part 'statistic.g.dart';

@freezed
abstract class Statistic with _$Statistic {
  const factory Statistic({required String logo, required String title, required String value}) = _Statistic;

  factory Statistic.fromJson(Map<String, dynamic> json) => _$StatisticFromJson(json);
}

final statisticFakeData = [
  const Statistic(logo: 'assets/root/ic_revenue.png', title: 'Revenue', value: '\$25,000'),
  const Statistic(logo: 'assets/root/ic_orders.png', title: 'Orders', value: '1,200'),
  const Statistic(logo: 'assets/root/ic_customers.png', title: 'Customers', value: '800'),
];
