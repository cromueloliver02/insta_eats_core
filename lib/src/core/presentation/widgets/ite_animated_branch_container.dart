import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

class ITEAnimatedBranchContainer extends StatelessWidget {
  final int currentIndex;
  final List<Widget> children;

  const ITEAnimatedBranchContainer({
    super.key,
    required this.currentIndex,
    required this.children,
  });

  Widget _branchNavigatorWrapper(int idx, Widget child) {
    return IgnorePointer(
      ignoring: idx != currentIndex,
      child: TickerMode(
        enabled: idx == currentIndex,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: children
          .mapWithIndex(
            (Widget child, int idx) => AnimatedOpacity(
              opacity: idx == currentIndex ? 1 : 0,
              duration: const Duration(milliseconds: 400),
              child: _branchNavigatorWrapper(idx, child),
            ),
          )
          .toList(),
    );
  }
}
