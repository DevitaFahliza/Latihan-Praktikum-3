import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> data = [
    {'name': 'John', 'hobby': 'Reading'},
    {'name': 'Alice', 'hobby': 'Drawing'},
    {'name': 'Bob', 'hobby': 'Cooking'},
    {'name': 'Eve', 'hobby': 'Gardening'},
  ];

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            onTap: () {},
            leading: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            ),
            trailing: const Icon(Icons.more_vert),
            title: Text(data[index]['name']!),
            subtitle: Text(data[index]['hobby']!),
            tileColor: Colors.white70,
          ),
        );
      },
    );
  }
}
