import 'package:flutter/material.dart';
import 'package:subha/controller/repository.dart';

class AppState extends StatefulWidget {
  final Widget child;
  const AppState({super.key, required this.child});

  @override
  AppStateState createState() => AppStateState();
}

class AppStateState extends State<AppState> {
  var counter = 0;

  void increment() {
    setState(() {
      counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Repository(counter: counter, state: this, child: widget.child);
  }
}
