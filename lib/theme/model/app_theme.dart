import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_theme.freezed.dart';
part 'app_theme.g.dart';

// TODO: move colors' descriptions somewhere else, probably documentation.

@freezed
class AppTheme with _$AppTheme {
  const factory AppTheme({
    ///
    required String name,

    /// The furthest background (page background).
    @ColorJsonConverter() required Color background,

    /// To contrast with [background], e.g. drawer.
    @ColorJsonConverter() required Color background2,

    /// To be shown on either [background] or[background2] e.g. button.
    @ColorJsonConverter() required Color accent,

    ///
    @ColorJsonConverter() required Color text,
  }) = _AppTheme;

  factory AppTheme.fromJson(Map<String, dynamic> json) =>
      _$AppThemeFromJson(json);
}

class ColorJsonConverter extends JsonConverter<Color, int> {
  @override
  Color fromJson(int json) => Color(json);

  @override
  int toJson(Color object) => object.value;

  const ColorJsonConverter();
}
