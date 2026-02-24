enum FeatureType { weather, social, promotion, map }

extension FeatureExtension on FeatureType {
  String get title {
    switch (this) {
      case FeatureType.weather:
        return 'Thời tiêt';
      case FeatureType.social:
        return 'Cộng dồng';
      case FeatureType.promotion:
        return 'Khuyến mãi';
      case FeatureType.map:
        return 'Bản đồ';
    }
  }
}
