// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingItem {

 String get titleKey; String get descKey; String get tag; Color get accentColor; String get imagePath;
/// Create a copy of OnboardingItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingItemCopyWith<OnboardingItem> get copyWith => _$OnboardingItemCopyWithImpl<OnboardingItem>(this as OnboardingItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingItem&&(identical(other.titleKey, titleKey) || other.titleKey == titleKey)&&(identical(other.descKey, descKey) || other.descKey == descKey)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.accentColor, accentColor) || other.accentColor == accentColor)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,titleKey,descKey,tag,accentColor,imagePath);

@override
String toString() {
  return 'OnboardingItem(titleKey: $titleKey, descKey: $descKey, tag: $tag, accentColor: $accentColor, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class $OnboardingItemCopyWith<$Res>  {
  factory $OnboardingItemCopyWith(OnboardingItem value, $Res Function(OnboardingItem) _then) = _$OnboardingItemCopyWithImpl;
@useResult
$Res call({
 String titleKey, String descKey, String tag, Color accentColor, String imagePath
});




}
/// @nodoc
class _$OnboardingItemCopyWithImpl<$Res>
    implements $OnboardingItemCopyWith<$Res> {
  _$OnboardingItemCopyWithImpl(this._self, this._then);

  final OnboardingItem _self;
  final $Res Function(OnboardingItem) _then;

/// Create a copy of OnboardingItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? titleKey = null,Object? descKey = null,Object? tag = null,Object? accentColor = null,Object? imagePath = null,}) {
  return _then(_self.copyWith(
titleKey: null == titleKey ? _self.titleKey : titleKey // ignore: cast_nullable_to_non_nullable
as String,descKey: null == descKey ? _self.descKey : descKey // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,accentColor: null == accentColor ? _self.accentColor : accentColor // ignore: cast_nullable_to_non_nullable
as Color,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OnboardingItem].
extension OnboardingItemPatterns on OnboardingItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnboardingItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnboardingItem value)  $default,){
final _that = this;
switch (_that) {
case _OnboardingItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnboardingItem value)?  $default,){
final _that = this;
switch (_that) {
case _OnboardingItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String titleKey,  String descKey,  String tag,  Color accentColor,  String imagePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingItem() when $default != null:
return $default(_that.titleKey,_that.descKey,_that.tag,_that.accentColor,_that.imagePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String titleKey,  String descKey,  String tag,  Color accentColor,  String imagePath)  $default,) {final _that = this;
switch (_that) {
case _OnboardingItem():
return $default(_that.titleKey,_that.descKey,_that.tag,_that.accentColor,_that.imagePath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String titleKey,  String descKey,  String tag,  Color accentColor,  String imagePath)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingItem() when $default != null:
return $default(_that.titleKey,_that.descKey,_that.tag,_that.accentColor,_that.imagePath);case _:
  return null;

}
}

}

/// @nodoc


class _OnboardingItem implements OnboardingItem {
  const _OnboardingItem({required this.titleKey, required this.descKey, required this.tag, required this.accentColor, required this.imagePath});
  

@override final  String titleKey;
@override final  String descKey;
@override final  String tag;
@override final  Color accentColor;
@override final  String imagePath;

/// Create a copy of OnboardingItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingItemCopyWith<_OnboardingItem> get copyWith => __$OnboardingItemCopyWithImpl<_OnboardingItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingItem&&(identical(other.titleKey, titleKey) || other.titleKey == titleKey)&&(identical(other.descKey, descKey) || other.descKey == descKey)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.accentColor, accentColor) || other.accentColor == accentColor)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,titleKey,descKey,tag,accentColor,imagePath);

@override
String toString() {
  return 'OnboardingItem(titleKey: $titleKey, descKey: $descKey, tag: $tag, accentColor: $accentColor, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class _$OnboardingItemCopyWith<$Res> implements $OnboardingItemCopyWith<$Res> {
  factory _$OnboardingItemCopyWith(_OnboardingItem value, $Res Function(_OnboardingItem) _then) = __$OnboardingItemCopyWithImpl;
@override @useResult
$Res call({
 String titleKey, String descKey, String tag, Color accentColor, String imagePath
});




}
/// @nodoc
class __$OnboardingItemCopyWithImpl<$Res>
    implements _$OnboardingItemCopyWith<$Res> {
  __$OnboardingItemCopyWithImpl(this._self, this._then);

  final _OnboardingItem _self;
  final $Res Function(_OnboardingItem) _then;

/// Create a copy of OnboardingItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? titleKey = null,Object? descKey = null,Object? tag = null,Object? accentColor = null,Object? imagePath = null,}) {
  return _then(_OnboardingItem(
titleKey: null == titleKey ? _self.titleKey : titleKey // ignore: cast_nullable_to_non_nullable
as String,descKey: null == descKey ? _self.descKey : descKey // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,accentColor: null == accentColor ? _self.accentColor : accentColor // ignore: cast_nullable_to_non_nullable
as Color,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
