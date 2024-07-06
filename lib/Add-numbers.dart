import 'package:flutter/material.dart';

class Addnumbers extends StatefulWidget {
  Addnumbers({super.key});

  @override
  State<Addnumbers> createState() => _AddnumbersState();
}

class _AddnumbersState extends State<Addnumbers> {
  TextEditingController number1controller = TextEditingController();
  TextEditingController number2controller = TextEditingController();
  double add = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Text(
            'Add Numbers',
            style: TextStyle(color: Colors.red.shade900),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade50,
      ),
      backgroundColor: Colors.blue.shade50,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 80, left: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///------------------->>Ist Text Box
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.tealAccent),
                  color: Colors.white,
                ),
                child: TextFormField(
                  controller: number1controller,
                  decoration: InputDecoration(
                      hintText: "Enter First Numbers",
                      hintStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none),
                ),
              ),

              SizedBox(
                height: 5,
              ),

              ///----------------->>2nd Text box
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.tealAccent),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextFormField(
                  controller: number2controller,
                  decoration: InputDecoration(
                      hintText: "Enter Secound Number",
                      hintStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none),
                ),
              ),

              Text(
                'Result= $add',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  if (number1controller.text == '' ||
                      number2controller.text == '') {
                    print('Enter numbers');
                  } else {
                    double n1 = double.parse(number1controller.text);
                    double n2 = double.parse(number2controller.text);
                    add = n1 + n2;
                    setState(() {});
                  }
                },
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              /////======================================>>Sub
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  if (number1controller.text == '' ||
                      number2controller.text == '') {
                    print('Enter your number');
                  } else {
                    double n1 = double.parse(number1controller.text);
                    double n2 = double.parse(number2controller.text);
                    add = n1 - n2;
                    setState(() {});
                  }
                },
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Sub',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  if (number1controller.text == '' ||
                      number2controller.text == '') {
                    print('Enter your number');
                  } else {
                    double n1 = double.parse(number1controller.text);
                    double n2 = double.parse(number2controller.text);
                    add = n1 * n2;
                    setState(() {});
                  }
                },
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Multi',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
