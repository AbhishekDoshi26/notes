import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes App'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          100,
          (index) => const Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              color: Colors.red,
              elevation: 5,
              shadowColor: Colors.white,
            ),
          ),
        ).toList(),
      ),
    );
  }
}
