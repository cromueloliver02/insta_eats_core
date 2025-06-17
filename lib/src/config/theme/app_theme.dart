import 'package:flutter/material.dart';

import 'package:insta_eats_core/src/gen/fonts.gen.dart';

part 'app_color_theme_data.dart';
part 'app_text_theme_data.dart';

extension AppThemeX on BuildContext {
  AppColorThemeData get colorTheme => AppTheme.of(this).colorTheme;
  AppTextThemeData get textTheme => AppTheme.of(this).textTheme;
  ThemeData get theme => Theme.of(this);
}

class AppThemeData {
  final AppColorThemeData colorTheme;
  final AppTextThemeData textTheme;

  const AppThemeData._({required this.colorTheme, required this.textTheme});

  factory AppThemeData.theme() {
    return AppThemeData._(
      colorTheme: AppColorThemeData.colorTheme(),
      textTheme: AppTextThemeData.textTheme(),
    );
  }
}

// class for reading AppThemeData via InheritedWidget instead of using the
// provider package for injecting this to the widget tree
class AppTheme extends InheritedWidget {
  final AppThemeData data;

  const AppTheme({super.key, required this.data, required super.child});

  static final ThemeData lightTheme = ThemeData(
    fontFamily: FontFamily.uberMove,
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4BA457)),
  );

  static AppThemeData? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppTheme>()?.data;
  }

  static AppThemeData of(BuildContext context) {
    final AppThemeData? appTheme = maybeOf(context);

    if (appTheme != null) {
      return appTheme;
    } else {
      throw StateError('Could not find ancestor widget of type `AppTheme`');
    }
  }

  @override
  bool updateShouldNotify(AppTheme oldWidget) => data != oldWidget.data;
}
