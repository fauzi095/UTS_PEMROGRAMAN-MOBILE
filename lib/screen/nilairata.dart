import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Average Calculator',
    home: AverageCalculator(),
  ));
}

class AverageCalculator extends StatefulWidget {
  @override
  _AverageCalculatorState createState() => _AverageCalculatorState();
}

class _AverageCalculatorState extends State<AverageCalculator> {
  List<double> numbers = [];
  double average = 0.0;

  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Average Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enter a number:'),
            SizedBox(height: 10),
            TextField(
              controller: numberController,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add the number to the list
                double num = double.parse(numberController.text);
                setState(() {
                  numbers.add(num);
                  numberController.clear();
                });
              },
              child: Text('Add Number'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Calculate the average
                double sum = 0.0;
                for (var num in numbers) {
                  sum += num;
                }
                if (numbers.isNotEmpty) {
                  average = sum / numbers.length;
                } else {
                  average = 0.0;
                }
              },
              child: Text('Calculate Average'),
            ),
            SizedBox(height: 20),
            Text('Numbers: $numbers'),
            SizedBox(height: 10),
            Text('Average: $average'),
          ],
        ),
      ),
    );
  }
}
