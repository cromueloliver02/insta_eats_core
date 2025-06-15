part of 'app_theme.dart';

class AppTextStyle {
  const AppTextStyle._();

  // Uber Move regular font styles
  static const TextStyle _heading26 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
  static const TextStyle _heading24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
  static const TextStyle _heading22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
  static const TextStyle _heading20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
  static const TextStyle _body18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
  static const TextStyle _body16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
  static const TextStyle _body14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );

  static const TextStyle _small12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
  static const TextStyle _small10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
  static const TextStyle _small8 = TextStyle(
    fontSize: 8,
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );

  // Uber Move bold font styles
  static const TextStyle _heading26Bold = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
  static const TextStyle _heading24Bold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
  static const TextStyle _heading22Bold = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
  static const TextStyle _heading20Bold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
  static const TextStyle _body18Bold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
  static const TextStyle _body16Bold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
  static const TextStyle _body14Bold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
  static const TextStyle _small12Bold = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
  static const TextStyle _small10Bold = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
  static const TextStyle _small8Bold = TextStyle(
    fontSize: 8,
    fontWeight: FontWeight.w600,
    fontFamily: FontFamily.uberMove,
    color: AppColor._black,
  );
}

class AppTextThemeData {
  final TextStyle heading26;
  final TextStyle heading24;
  final TextStyle heading22;
  final TextStyle heading20;
  final TextStyle body18;
  final TextStyle body16;
  final TextStyle body14;
  final TextStyle small12;
  final TextStyle small10;
  final TextStyle small8;
  final TextStyle heading26Bold;
  final TextStyle heading24Bold;
  final TextStyle heading22Bold;
  final TextStyle heading20Bold;
  final TextStyle body18Bold;
  final TextStyle body16Bold;
  final TextStyle body14Bold;
  final TextStyle small12Bold;
  final TextStyle small10Bold;
  final TextStyle small8Bold;

  const AppTextThemeData._({
    required this.heading26,
    required this.heading24,
    required this.heading22,
    required this.heading20,
    required this.body18,
    required this.body16,
    required this.body14,
    required this.small12,
    required this.small10,
    required this.small8,
    required this.heading26Bold,
    required this.heading24Bold,
    required this.heading22Bold,
    required this.heading20Bold,
    required this.body18Bold,
    required this.body16Bold,
    required this.body14Bold,
    required this.small12Bold,
    required this.small10Bold,
    required this.small8Bold,
  });

  factory AppTextThemeData.textTheme() {
    return const AppTextThemeData._(
      heading26: AppTextStyle._heading26,
      heading24: AppTextStyle._heading24,
      heading22: AppTextStyle._heading22,
      heading20: AppTextStyle._heading20,
      body18: AppTextStyle._body18,
      body16: AppTextStyle._body16,
      body14: AppTextStyle._body14,
      small12: AppTextStyle._small12,
      small10: AppTextStyle._small10,
      small8: AppTextStyle._small8,
      heading26Bold: AppTextStyle._heading26Bold,
      heading24Bold: AppTextStyle._heading24Bold,
      heading22Bold: AppTextStyle._heading22Bold,
      heading20Bold: AppTextStyle._heading20Bold,
      body18Bold: AppTextStyle._body18Bold,
      body16Bold: AppTextStyle._body16Bold,
      body14Bold: AppTextStyle._body14Bold,
      small12Bold: AppTextStyle._small12Bold,
      small10Bold: AppTextStyle._small10Bold,
      small8Bold: AppTextStyle._small8Bold,
    );
  }
}
