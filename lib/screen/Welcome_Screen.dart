import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/login.dart';
import 'package:flutter_application_1/screen/signup.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        child: Column(
          children:[
            SizedBox(height:15),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){
                 //  Navigator.push(context, MaterialPageRoute(
                  // builder:(context) => NavBarRoots(),
                  // ));
              },
              child: Text(
                "Skip",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize:20,
                ),
              ),
              ),
            ),
            SizedBox(height:50),
            Padding(
              padding: EdgeInsets.all(20),
            //  child: Image.asset("images/santa-claus.png"),
            ),
            SizedBox(height: 50),
            Text("PERHITUNGAN",
            style: TextStyle(
              color: Colors.red,
              fontSize: 35,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 2,
            ),
          ),
        SizedBox(height: 10),
            Text("WELCOME",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Material(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(
                    builder:(context) => LoginScreen()
                    ));
                  },
                  child: Padding(
                    padding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ),
                ),
              ),
              Material(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(
                        builder:(context) => SignUpScreen(),
                      ));
                  },
                  child: Padding(
                    padding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ),
                ),
              ),
            ]
          ),
          ],
        ),
      ),
    );
    
  }
}