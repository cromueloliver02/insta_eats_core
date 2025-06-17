import 'package:flutter/material.dart';

import 'package:insta_eats_core/src/config/theme/app_theme.dart';

class ITETextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? enabled;
  final AutovalidateMode? autovalidateMode;
  final bool? filled;
  final String? labelText;
  final TextStyle? labelStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final EdgeInsetsGeometry? contentPadding;
  final bool obscureText;
  final bool readOnly;
  final Color? fillColor;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int? maxLines;
  final double borderRadius;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;

  const ITETextField({
    super.key,
    this.controller,
    this.enabled,
    this.autovalidateMode,
    this.filled,
    this.labelText,
    this.labelStyle,
    this.hintText,
    this.hintStyle,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 20),
    this.obscureText = false,
    this.readOnly = false,
    this.fillColor,
    this.suffixIcon,
    this.keyboardType,
    this.maxLength,
    this.maxLines = 1,
    this.borderRadius = 8,
    this.validator,
    this.onSaved,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final AppTextThemeData textTheme = context.textTheme;

    return TextFormField(
      controller: controller,
      enabled: enabled,
      autovalidateMode: autovalidateMode,
      readOnly: readOnly,
      obscureText: obscureText,
      keyboardType: keyboardType,
      maxLength: maxLength,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: labelStyle ?? textTheme.body16,
        hintText: hintText,
        // pre-occupied space for error text
        counterText: maxLength == null ? ' ' : null,
        filled: filled,
        fillColor: fillColor,
        suffixIcon: suffixIcon,
        contentPadding: contentPadding,
        hintStyle: hintStyle ?? textTheme.body16,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: context.theme.primaryColor),
        ),
      ),
      onSaved: onSaved,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
