import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  final List<String> data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Scaffold(
                body: Column(
                  children: [
                    TextField(
                      controller: _controller,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          data.add(_controller.text);
                          _controller.clear();
                          Navigator.pop(context);
                        });
                      },
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Notes App'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          data.length,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.red,
              elevation: 5,
              shadowColor: Colors.white,
              child: Text(
                data[index],
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ).toList(),
      ),
    );
  }
}
