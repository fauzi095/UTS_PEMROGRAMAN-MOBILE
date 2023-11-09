import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  
  TextEditingController filedOne = TextEditingController();
  TextEditingController filedTwo = TextEditingController();
  TextEditingController filedThree = TextEditingController();
  double tFieldOne = 0;
  double tFieldTwo = 0;
  double tFieldThree = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF7165D6),
          title: Align(
            alignment: Alignment.centerLeft,
              child: Text(
                "Calculator",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        body: ListView(
          children: [
            SizedBox(height:10 ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: TextField(
                    controller: filedOne,
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(),
                    ),  
                  ),
                ),
            SizedBox(height:10 ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: TextField(
                    controller: filedTwo,
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(),
                    ),  
                  ),
                ),
            SizedBox(height:10 ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: TextField(
                    controller: filedThree,
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(),
                    ),  
                  ),
                ),
            Padding(padding: EdgeInsets.all(20),
            child: Container(
              width: 150,
              child: Center(
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 55,
                        width: 55,
                        child: Material(
                        color: Color(0xFF7165D6),
                        borderRadius: BorderRadius.circular(5),
                        child: InkWell(
                          onTap: () {
                            tFieldOne = double.parse(filedOne.value.text);
                            tFieldTwo = double.parse(filedTwo.value.text);
                            setState(() {
                            filedThree.text = (tFieldOne + tFieldTwo).toString();
                            });
                          },
                          child: Center(child: Text(
                            "+",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),    
                            ),
                          ),
                        ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 55,
                        width: 55,
                        child: Material(
                        color: Color(0xFF7165D6),
                        borderRadius: BorderRadius.circular(5),
                        child: InkWell(
                          onTap: () {
                            tFieldOne = double.parse(filedOne.value.text);
                            tFieldTwo = double.parse(filedTwo.value.text);
                            setState(() {
                            filedThree.text = (tFieldOne - tFieldTwo).toString();
                            });
                          },
                          child: Center(child: Text(
                            "-",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),    
                            ),
                          ),
                        ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 55,
                        width: 55,
                        child: Material(
                        color: Color(0xFF7165D6),
                        borderRadius: BorderRadius.circular(5),
                        child: InkWell(
                          onTap: () {
                            tFieldOne = double.parse(filedOne.value.text);
                            tFieldTwo = double.parse(filedTwo.value.text);
                            setState(() {
                            filedThree.text = (tFieldOne * tFieldTwo).toString();
                            });
                          },
                          child: Center(child: Text(
                            "X",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),    
                            ),
                          ),
                        ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 55,
                        width: 55,
                        child: Material(
                        color: Color(0xFF7165D6),
                        borderRadius: BorderRadius.circular(5),
                        child: InkWell(
                          onTap: () {
                            tFieldOne = double.parse(filedOne.value.text);
                            tFieldTwo = double.parse(filedTwo.value.text);
                            setState(() {
                            filedThree.text = (tFieldOne / tFieldTwo).toString();
                            });
                          },
                          child: Center(child: Text(
                            "/",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),    
                            ),
                          ),
                        ),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
            )
            ),

            // Padding(padding: EdgeInsets.all(20),
            // child: SizedBox(
            //   height: 200,
            //   //child: Image.asset("assests/images/1.jpg"),
            // ),
            // )
          ],
        )
      );
  }
}