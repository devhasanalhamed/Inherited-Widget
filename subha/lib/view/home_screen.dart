import 'package:flutter/material.dart';
import 'package:subha/controller/repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final repo = Repository.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('SUBHA', style: TextStyle(fontWeight: FontWeight.bold)),
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
              '${repo.counter}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            ElevatedButton(
              onPressed: () {
                repo.increment();
              },
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
