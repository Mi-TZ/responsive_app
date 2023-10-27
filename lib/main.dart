import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Card App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Responsive Card App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double itemWidth = constraints.maxWidth / 2;
          final double itemHeight = itemWidth * 1.5;

          return Card(
            child: Container(
              width: itemWidth,
              height: itemHeight * 0.6,
              color: Colors.redAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: itemWidth / 2,
                    height:itemHeight * 0.2,
                    color: Colors.blue,
                  ),
                   SizedBox(height: itemHeight * 0.1),
                  Container(
                    width: itemWidth / 1.2,
                    height:itemHeight * 0.2,
                    color: Colors.greenAccent,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
