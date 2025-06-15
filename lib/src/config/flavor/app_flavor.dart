enum AppFlavor {
  development,
  staging,
  production;

  bool get isDevelopment => this == AppFlavor.development;
  bool get isStaging => this == AppFlavor.staging;
  bool get isProduction => this == AppFlavor.production;
}

class AppFlavorConfig {
  static late final AppFlavor flavor;

  static String get name => flavor.name;

  static String get title {
    return switch (flavor) {
      AppFlavor.development => '[DEV] Insta Eats',
      AppFlavor.staging => '[STG] Insta Eats',
      AppFlavor.production => 'Insta Eats',
    };
  }
}
