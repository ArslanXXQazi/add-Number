import 'package:flutter/material.dart';
class Counterapp extends StatefulWidget {
  const Counterapp({super.key});

  @override
  State<Counterapp> createState() => _CounterappState();
}

class _CounterappState extends State<Counterapp> {
  int add=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade50,
        title: Text('Counter App',style:
        TextStyle(
          color: Colors.red,
          fontSize: 30,
          fontStyle: FontStyle.italic
        ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ///===============================>>> Add floating button
          FloatingActionButton(onPressed: ()
          {
            add++;
            setState(() {

            });
          },
            backgroundColor: Colors.green,
            child: Icon(Icons.add,color: Colors.white,),
          ),
          SizedBox(height: 10,),
          ///================================>>>sub floating button
          FloatingActionButton(onPressed: ()
          {
           if(add>0)
             {
               add--;
             }
            setState(() {
            });
          },
            backgroundColor: Colors.red,
            child: Icon(Icons.remove,color: Colors.white,),
          ),
          SizedBox(height: 10,),
          ///=============================>>>Reset floating buttton
          FloatingActionButton(onPressed: ()
          {
            add=0;
            setState(() {

            });
          },
            backgroundColor: Colors.deepPurple,
            child: Icon(Icons.lock_reset_outlined,color: Colors.white,),
          ),
        ],
      ),
      body: Center(
        child: Text('$add',style: TextStyle(
          fontSize: 30,

        ),),
      ),
    );
  }
}
