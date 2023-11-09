import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/nilairata.dart';
import 'package:flutter_application_1/screen/user.dart';
import 'calculator.dart'; // Import Calculator page
import 'BMI.dart'; // Import BMI Calculator page
import 'suhu.dart'; // Import Temperature Converter page

void main() {
  runApp(MaterialApp(
    title: 'Fauzi WOW App',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fauzi WOW'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello User",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("images/santa-claus.jpg"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            // Feature Buttons
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildFeatureButton(
                      'Calculator',
                      'images/calculator.jpg',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CalculatorPage(),
                          ),
                        );
                      },
                    ),
                    buildFeatureButton(
                      'BMI Calculator',
                      'images/BMI.jpg',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BMICalculator(),
                          ),
                        );
                      },
                    ),
                    buildFeatureButton(
                      'Temperature Converter',
                      'images/tanya.jpg',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TemperatureConverter(),
                          ),
                        );
                      },
                    ),
                    // "Average Calculator" Button
                    buildFeatureButton(
                      'Average Calculator',
                      'images/average.jpg',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AverageCalculator(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),

            // Profile Button
            SizedBox(height: 20),
            buildFeatureButton(
              'Profile',
              'images/profile.jpg',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFeatureButton(String title, String image, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFF7165D6),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              spreadRadius: 4,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add,
                color: Color(0xFF7165D6),
                size: 35,
              ),
            ),
            SizedBox(height: 30),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Click to access",
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
