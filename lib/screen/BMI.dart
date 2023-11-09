import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'BMI Calculator',
    home: BMICalculator(),
  ));
}

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  double height = 0.0;
  double weight = 0.0;
  double bmi = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enter your height (in meters):'),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  height = double.parse(value);
                });
              },
            ),
            SizedBox(height: 20),
            Text('Enter your weight (in kilograms):'),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  weight = double.parse(value);
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Calculate BMI
                double calculatedBMI = weight / (height * height);
                setState(() {
                  bmi = calculatedBMI;
                });
              },
              child: Text('Calculate BMI'),
            ),
            SizedBox(height: 20),
            Text('Your BMI is: $bmi'),
          ],
        ),
      ),
    );
  }
}
