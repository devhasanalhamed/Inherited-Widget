import 'package:flutter/material.dart';
import 'package:subha/controller/app_state.dart';

class Repository extends InheritedWidget {
  final int counter;
  final AppStateState state;
  const Repository({
    super.key,
    required super.child,
    required this.counter,
    required this.state,
  });

  static AppStateState of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Repository>()!.state;

  @override
  bool updateShouldNotify(covariant Repository oldWidget) {
    return counter != oldWidget.counter;
  }
}
