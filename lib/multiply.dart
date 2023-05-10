import 'package:flutter/material.dart';

class MultiplyScreen extends StatefulWidget {
  const MultiplyScreen({super.key});

  @override
  State<MultiplyScreen> createState() => _MultiplyScreenState();
}

class _MultiplyScreenState extends State<MultiplyScreen> {
  final TextEditingController _num1Ctrl = TextEditingController();
  final TextEditingController _num2Ctrl = TextEditingController();
  int result = 0;

  multiplyNum() {
    int num1 = int.parse(_num1Ctrl.text);
    int num2 = int.parse(_num2Ctrl.text);
    result = num1 * num2;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Multiply Screen')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextField(
              controller: _num1Ctrl,
              decoration: const InputDecoration(label: Text('Number 1'))),
          const SizedBox(
            height: 8,
          ),
          TextField(
              controller: _num2Ctrl,
              decoration: const InputDecoration(label: Text('Number 2'))),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: multiplyNum,
            child: const Icon(
              Icons.clear,
              color: Colors.white,
            ),
          ),
          Text('$result'),
        ]),
      ),
    );
  }
}
