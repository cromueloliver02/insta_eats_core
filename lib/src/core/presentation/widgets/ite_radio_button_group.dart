import 'package:flutter/material.dart';
import 'package:insta_eats_core/insta_eats_core.dart';

class ITERadioButtonItem<T> {
  final String label;
  final T value;
  final T groupValue;

  const ITERadioButtonItem({
    required this.label,
    required this.value,
    required this.groupValue,
  });
}

class ITERadioButtonGroup<T> extends StatefulWidget {
  final String label;
  final List<ITERadioButtonItem<T>> items;
  final void Function(T?) onChanged;

  const ITERadioButtonGroup({
    super.key,
    required this.label,
    required this.items,
    required this.onChanged,
  });

  @override
  State<ITERadioButtonGroup<T>> createState() => _ITERadioButtonGroupState<T>();
}

class _ITERadioButtonGroupState<T> extends State<ITERadioButtonGroup<T>> {
  @override
  Widget build(BuildContext context) {
    final AppTextThemeData textTheme = context.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: textTheme.body16,
        ),
        Row(
          spacing: 20,
          children: widget.items
              .map(
                (d) => ITERadioButton<T>(
                  label: d.label,
                  value: d.value,
                  groupValue: d.groupValue,
                  onChanged: widget.onChanged,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
