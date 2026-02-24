// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Statistic {

 String get logo; String get title; String get value;
/// Create a copy of Statistic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatisticCopyWith<Statistic> get copyWith => _$StatisticCopyWithImpl<Statistic>(this as Statistic, _$identity);

  /// Serializes this Statistic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Statistic&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.title, title) || other.title == title)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,logo,title,value);

@override
String toString() {
  return 'Statistic(logo: $logo, title: $title, value: $value)';
}


}

/// @nodoc
abstract mixin class $StatisticCopyWith<$Res>  {
  factory $StatisticCopyWith(Statistic value, $Res Function(Statistic) _then) = _$StatisticCopyWithImpl;
@useResult
$Res call({
 String logo, String title, String value
});




}
/// @nodoc
class _$StatisticCopyWithImpl<$Res>
    implements $StatisticCopyWith<$Res> {
  _$StatisticCopyWithImpl(this._self, this._then);

  final Statistic _self;
  final $Res Function(Statistic) _then;

/// Create a copy of Statistic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? logo = null,Object? title = null,Object? value = null,}) {
  return _then(_self.copyWith(
logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Statistic].
extension StatisticPatterns on Statistic {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Statistic value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Statistic() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Statistic value)  $default,){
final _that = this;
switch (_that) {
case _Statistic():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Statistic value)?  $default,){
final _that = this;
switch (_that) {
case _Statistic() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String logo,  String title,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Statistic() when $default != null:
return $default(_that.logo,_that.title,_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String logo,  String title,  String value)  $default,) {final _that = this;
switch (_that) {
case _Statistic():
return $default(_that.logo,_that.title,_that.value);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String logo,  String title,  String value)?  $default,) {final _that = this;
switch (_that) {
case _Statistic() when $default != null:
return $default(_that.logo,_that.title,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Statistic implements Statistic {
  const _Statistic({required this.logo, required this.title, required this.value});
  factory _Statistic.fromJson(Map<String, dynamic> json) => _$StatisticFromJson(json);

@override final  String logo;
@override final  String title;
@override final  String value;

/// Create a copy of Statistic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatisticCopyWith<_Statistic> get copyWith => __$StatisticCopyWithImpl<_Statistic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatisticToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Statistic&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.title, title) || other.title == title)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,logo,title,value);

@override
String toString() {
  return 'Statistic(logo: $logo, title: $title, value: $value)';
}


}

/// @nodoc
abstract mixin class _$StatisticCopyWith<$Res> implements $StatisticCopyWith<$Res> {
  factory _$StatisticCopyWith(_Statistic value, $Res Function(_Statistic) _then) = __$StatisticCopyWithImpl;
@override @useResult
$Res call({
 String logo, String title, String value
});




}
/// @nodoc
class __$StatisticCopyWithImpl<$Res>
    implements _$StatisticCopyWith<$Res> {
  __$StatisticCopyWithImpl(this._self, this._then);

  final _Statistic _self;
  final $Res Function(_Statistic) _then;

/// Create a copy of Statistic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? logo = null,Object? title = null,Object? value = null,}) {
  return _then(_Statistic(
logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
