import 'package:flutter/material.dart';

class DataContainer extends InheritedWidget {
  const DataContainer({
    super.key,
    required super.child,
    required this.counter,
    required this.increment,
  });

  final int counter;
  final void Function() increment;

  static DataContainer of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<DataContainer>()!;

  @override
  bool updateShouldNotify(covariant DataContainer oldWidget) {
    return counter != oldWidget.counter;
  }
}
