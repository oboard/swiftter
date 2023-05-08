import 'package:flutter/material.dart';
import 'package:swiftter/swiftter.dart';

void main() => runApp(const TestApp());

class TestApp extends StatelessWidget {
  const TestApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swiftter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const _TestHomePage(),
    );
  }
}

class _TestHomePage extends StatefulWidget {
  const _TestHomePage();

  @override
  State<_TestHomePage> createState() => _TestHomePageState();
}

class _TestHomePageState extends State<_TestHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Swiftter Demo')),
      body: VStack([
        const Text("Swiffter")
            .color(Colors.white)
            .fontSize(24)
            .bold()
            .shadow(color: Colors.black, radius: 24, x: 0, y: 0)
            .expanded(),
      ]).padding(all: 80),
    );
  }
}
