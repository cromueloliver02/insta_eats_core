import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ITEResponsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const ITEResponsive({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

  static bool isMobile(BuildContext ctx) {
    return ResponsiveBreakpoints.of(ctx).isMobile;
  }

  static bool isTablet(BuildContext ctx) {
    return ResponsiveBreakpoints.of(ctx).isTablet;
  }

  static bool isDesktop(BuildContext ctx) {
    return ResponsiveBreakpoints.of(ctx).isDesktop;
  }

  static Widget builder(Widget child) {
    // offical Material 3 breakpoints
    // https://m3.material.io/foundations/layout/applying-layout/window-size-classes
    return ResponsiveBreakpoints.builder(
      breakpoints: const [
        Breakpoint(start: 0, end: 599, name: MOBILE),
        Breakpoint(start: 600, end: 839, name: TABLET),
        Breakpoint(start: 840, end: 1199, name: DESKTOP),
        Breakpoint(start: 1200, end: double.infinity, name: '4K'),
      ],
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final breakpoints = ResponsiveBreakpoints.of(context);

    if (breakpoints.isMobile) return mobile;
    if (breakpoints.isTablet) return tablet ?? mobile;

    return desktop;
  }
}
