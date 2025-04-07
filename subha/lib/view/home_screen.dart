import 'package:flutter/material.dart';
import 'package:subha/controller/data_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = context.dependOnInheritedWidgetOfExactType<DataContainer>()!;
    return Scaffold(
      appBar: AppBar(
        title: Text('Subha', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16.0,
          children: [
            Text(
              '${data.counter}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          data.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
