import 'package:flutter/material.dart';
import 'package:subha/controller/data_container.dart';

class AppState extends StatefulWidget {
  final Widget child;
  const AppState({super.key, required this.child});

  @override
  AppStateState createState() => AppStateState();
}

class AppStateState extends State<AppState> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DataContainer(
      counter: counter,
      increment: increment,
      child: widget.child,
    );
  }
}
