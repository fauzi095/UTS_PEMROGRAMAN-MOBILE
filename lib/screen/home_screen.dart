import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/nilairata.dart';
import 'calculator.dart';
import 'BMI.dart';
import 'suhu.dart';
import 'user.dart';

void main() {
  runApp(MaterialApp(
    title: 'Fauzi WOW App',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    HomeContent(),
    UserPage(),
    TambahPage(), // Add a new page for "Tambah"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Tambah',
          ),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  // "Tambah" Button
                  buildFeatureButton(
                    'API',
                    'images/your_image.jpg', // Replace with the appropriate image path
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TambahPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFeatureButton(String title, String image, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
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

class TambahPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Page'),
      ),
      body: Center(
        child: Text('Tambah Page Content'),
      ),
    );
  }
}
