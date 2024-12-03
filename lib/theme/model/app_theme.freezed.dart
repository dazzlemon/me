// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppTheme _$AppThemeFromJson(Map<String, dynamic> json) {
  return _AppTheme.fromJson(json);
}

/// @nodoc
mixin _$AppTheme {
  ///
  String get name => throw _privateConstructorUsedError;

  /// The furthest background (page background).
  @ColorJsonConverter()
  Color get background => throw _privateConstructorUsedError;

  /// To contrast with [background], e.g. drawer.
  @ColorJsonConverter()
  Color get background2 => throw _privateConstructorUsedError;

  /// To be shown on either [background] or[background2] e.g. button.
  @ColorJsonConverter()
  Color get accent => throw _privateConstructorUsedError;

  ///
  @ColorJsonConverter()
  Color get text => throw _privateConstructorUsedError;

  /// Serializes this AppTheme to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppThemeCopyWith<AppTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeCopyWith<$Res> {
  factory $AppThemeCopyWith(AppTheme value, $Res Function(AppTheme) then) =
      _$AppThemeCopyWithImpl<$Res, AppTheme>;
  @useResult
  $Res call(
      {String name,
      @ColorJsonConverter() Color background,
      @ColorJsonConverter() Color background2,
      @ColorJsonConverter() Color accent,
      @ColorJsonConverter() Color text});
}

/// @nodoc
class _$AppThemeCopyWithImpl<$Res, $Val extends AppTheme>
    implements $AppThemeCopyWith<$Res> {
  _$AppThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? background = null,
    Object? background2 = null,
    Object? accent = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as Color,
      background2: null == background2
          ? _value.background2
          : background2 // ignore: cast_nullable_to_non_nullable
              as Color,
      accent: null == accent
          ? _value.accent
          : accent // ignore: cast_nullable_to_non_nullable
              as Color,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppThemeImplCopyWith<$Res>
    implements $AppThemeCopyWith<$Res> {
  factory _$$AppThemeImplCopyWith(
          _$AppThemeImpl value, $Res Function(_$AppThemeImpl) then) =
      __$$AppThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @ColorJsonConverter() Color background,
      @ColorJsonConverter() Color background2,
      @ColorJsonConverter() Color accent,
      @ColorJsonConverter() Color text});
}

/// @nodoc
class __$$AppThemeImplCopyWithImpl<$Res>
    extends _$AppThemeCopyWithImpl<$Res, _$AppThemeImpl>
    implements _$$AppThemeImplCopyWith<$Res> {
  __$$AppThemeImplCopyWithImpl(
      _$AppThemeImpl _value, $Res Function(_$AppThemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? background = null,
    Object? background2 = null,
    Object? accent = null,
    Object? text = null,
  }) {
    return _then(_$AppThemeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as Color,
      background2: null == background2
          ? _value.background2
          : background2 // ignore: cast_nullable_to_non_nullable
              as Color,
      accent: null == accent
          ? _value.accent
          : accent // ignore: cast_nullable_to_non_nullable
              as Color,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppThemeImpl implements _AppTheme {
  const _$AppThemeImpl(
      {required this.name,
      @ColorJsonConverter() required this.background,
      @ColorJsonConverter() required this.background2,
      @ColorJsonConverter() required this.accent,
      @ColorJsonConverter() required this.text});

  factory _$AppThemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppThemeImplFromJson(json);

  ///
  @override
  final String name;

  /// The furthest background (page background).
  @override
  @ColorJsonConverter()
  final Color background;

  /// To contrast with [background], e.g. drawer.
  @override
  @ColorJsonConverter()
  final Color background2;

  /// To be shown on either [background] or[background2] e.g. button.
  @override
  @ColorJsonConverter()
  final Color accent;

  ///
  @override
  @ColorJsonConverter()
  final Color text;

  @override
  String toString() {
    return 'AppTheme(name: $name, background: $background, background2: $background2, accent: $accent, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppThemeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.background2, background2) ||
                other.background2 == background2) &&
            (identical(other.accent, accent) || other.accent == accent) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, background, background2, accent, text);

  /// Create a copy of AppTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppThemeImplCopyWith<_$AppThemeImpl> get copyWith =>
      __$$AppThemeImplCopyWithImpl<_$AppThemeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppThemeImplToJson(
      this,
    );
  }
}

abstract class _AppTheme implements AppTheme {
  const factory _AppTheme(
      {required final String name,
      @ColorJsonConverter() required final Color background,
      @ColorJsonConverter() required final Color background2,
      @ColorJsonConverter() required final Color accent,
      @ColorJsonConverter() required final Color text}) = _$AppThemeImpl;

  factory _AppTheme.fromJson(Map<String, dynamic> json) =
      _$AppThemeImpl.fromJson;

  ///
  @override
  String get name;

  /// The furthest background (page background).
  @override
  @ColorJsonConverter()
  Color get background;

  /// To contrast with [background], e.g. drawer.
  @override
  @ColorJsonConverter()
  Color get background2;

  /// To be shown on either [background] or[background2] e.g. button.
  @override
  @ColorJsonConverter()
  Color get accent;

  ///
  @override
  @ColorJsonConverter()
  Color get text;

  /// Create a copy of AppTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppThemeImplCopyWith<_$AppThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
