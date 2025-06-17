import 'package:flutter/material.dart';

import 'package:insta_eats_core/insta_eats_core.dart';

class ITERadioButton<T> extends StatelessWidget {
  final String label;
  final T value;
  final T groupValue;
  final void Function(T?) onChanged;

  const ITERadioButton({
    super.key,
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final AppTextThemeData textTheme = context.textTheme;

    return Row(
      children: [
        Radio(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        Text(label, style: textTheme.body14),
      ],
    );
  }
}
