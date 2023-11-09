import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Temperature Converter',
    home: TemperatureConverter(),
  ));
}

class TemperatureConverter extends StatefulWidget {
  @override
  _TemperatureConverterState createState() => _TemperatureConverterState();
}

class _TemperatureConverterState extends State<TemperatureConverter> {
  double celsius = 0.0;
  double fahrenheit = 0.0;
  double kelvin = 0.0;

  void convertTemperature() {
    setState(() {
      fahrenheit = (celsius * 9 / 5) + 32;
      kelvin = celsius + 273.15;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Converter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enter Temperature in Celsius:'),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  celsius = double.parse(value);
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: convertTemperature,
              child: Text('Convert Temperature'),
            ),
            SizedBox(height: 20),
            Text('Converted Temperature:'),
            Text('Fahrenheit: $fahrenheit°F'),
            Text('Kelvin: $kelvin K'),
          ],
        ),
      ),
    );
  }
}
