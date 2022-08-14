import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_calculator/calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Simple Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Calculator calculator = Calculator();
  final firstNoController = TextEditingController(text: '10');
  final secondNoController = TextEditingController(text: '5');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
              child: TextField(
                textAlign: TextAlign.center,
                controller: firstNoController,
                autofocus: true,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 80,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
              child: TextField(
                textAlign: TextAlign.center,
                controller: secondNoController,
                autofocus: true,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 80,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              '${calculator.result}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 80,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                calculator.add(int.tryParse(firstNoController.text)!,
                    int.tryParse(secondNoController.text)!);
              });
            },
            child: const Text(
              '+',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                calculator.subtract(int.tryParse(firstNoController.text)!,
                    int.tryParse(secondNoController.text)!);
              });
            },
            child: const Text(
              '-',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                calculator.multiply(int.tryParse(firstNoController.text)!,
                    int.tryParse(secondNoController.text)!);
              });
            },
            child: const Text(
              'x',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                calculator.divide(double.tryParse(firstNoController.text)!,
                    double.tryParse(secondNoController.text)!);
              });
            },
            child: const Text(
              '/',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          )
        ],
      ),
    );
  }
}
