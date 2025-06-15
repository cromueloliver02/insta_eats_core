part of 'app_theme.dart';

class AppColor {
  const AppColor._();

  static const Color _white = Color(0xFFFFFFFF);
  static const Color _black = Color(0xFF000000);
  static const Color _black38 = Color(0x60000000);
  static const Color _black87 = Color(0xDD000000);
  static const Color _grey = Color(0xFF9E9E9E);
  static const Color _grey50 = Color(0xFFFAFAFA);
  static const Color _greyShade1 = Color(0xFFF5F5F5);
  static const Color _greyShade2 = Color(0xFFEEEEEE);
  static const Color _greyShade3 = Color(0xFFE0E0E0);
  static const Color _greyShadeButton = Color(0xffe8e8e8);
  static const Color _orange = Color(0xFFFF9800);
  static const Color _blue = Color(0xFF2196F3);
  static const Color _amber = Color(0xFFFFC107);
  static const Color _buttonColor = Color(0xFFFFC107);
  static const Color _transparent = Color(0x00000000);
  static const Color _teal = Color(0xFF009688);
  static const Color _secondaryColor = Color(0xFFFF9900);
  static const Color _red = Color(0xFFF44336);
  static const Color _success = Color(0xff227444);
  static const Color _green200 = Color(0xFFA5D6A7);
  static const Color _error = Color(0xff831D1D);
  static const Color _blue50 = Color(0xFFE3F2FD);
  static const Color _blueAccent100 = Color(0xFF82B1FF);

// linear gradient colors
  static const List<Color> _appBarGradientColor = [
    Color(0xff82d9e3),
    Color(0xffa7e7cd),
  ];
  static const List<Color> _addressBarGradientColor = [
    Color(0xffb5e7ee),
    Color(0xffcbf1e2),
  ];
}

class AppColorThemeData {
  final Color white;
  final Color black;
  final Color black38;
  final Color black87;
  final Color grey;
  final Color grey50;
  final Color greyShade1;
  final Color greyShade2;
  final Color greyShade3;
  final Color greyShadeButton;
  final Color orange;
  final Color blue;
  final Color amber;
  final Color buttonColor;
  final Color transparent;
  final Color teal;
  final Color secondaryColor;
  final Color red;
  final Color success;
  final Color green200;
  final Color error;
  final Color blue50;
  final Color blueAccent100;
  final List<Color> appBarGradientColor;
  final List<Color> addressBarGradientColor;

  const AppColorThemeData._({
    required this.white,
    required this.black,
    required this.black38,
    required this.black87,
    required this.grey,
    required this.grey50,
    required this.greyShade1,
    required this.greyShade2,
    required this.greyShade3,
    required this.greyShadeButton,
    required this.orange,
    required this.blue,
    required this.amber,
    required this.buttonColor,
    required this.transparent,
    required this.teal,
    required this.secondaryColor,
    required this.red,
    required this.success,
    required this.green200,
    required this.error,
    required this.blue50,
    required this.blueAccent100,
    required this.appBarGradientColor,
    required this.addressBarGradientColor,
  });

  factory AppColorThemeData.colorTheme() {
    return const AppColorThemeData._(
      white: AppColor._white,
      black: AppColor._black,
      black38: AppColor._black38,
      black87: AppColor._black87,
      grey: AppColor._grey,
      grey50: AppColor._grey50,
      greyShade1: AppColor._greyShade1,
      greyShade2: AppColor._greyShade2,
      greyShade3: AppColor._greyShade3,
      greyShadeButton: AppColor._greyShadeButton,
      orange: AppColor._orange,
      blue: AppColor._blue,
      amber: AppColor._amber,
      buttonColor: AppColor._buttonColor,
      transparent: AppColor._transparent,
      teal: AppColor._teal,
      secondaryColor: AppColor._secondaryColor,
      red: AppColor._red,
      success: AppColor._success,
      green200: AppColor._green200,
      error: AppColor._error,
      blue50: AppColor._blue50,
      blueAccent100: AppColor._blueAccent100,
      appBarGradientColor: AppColor._appBarGradientColor,
      addressBarGradientColor: AppColor._addressBarGradientColor,
    );
  }
}
