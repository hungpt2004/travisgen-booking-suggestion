pre_dev_build:
	flutter clean; fvm flutter pub get; cd ios; pod install; cd..; fvm flutter build ios --target=lib/main_dev.dart --dart-define-from-file=config_dev.json --flavor=dev;
pre_prod_build:
	flutter clean; flutter pub get; cd ios; pod install; cd ..; flutter build ios --target=lib/main_prod.dart --dart-define-from-file=config_prod.json --flavor=prod;
localization:
	 dart run easy_localization:generate -S assets/translations;  dart run easy_localization:generate -S assets/translations -f keys -o locale_keys.g.dart; 
build:
	 dart run build_runner build --delete-conflicting-outputs;
watch:
	dart run build_runner watch --delete-conflicting-outputs;
pre_android_build:
	flutter build appbundle --flavor prod -t lib/main_prod.dart --dart-define-from-file=config_prod.json --flavor=prod;
.PHONY: gen clean prebuild build watch localization