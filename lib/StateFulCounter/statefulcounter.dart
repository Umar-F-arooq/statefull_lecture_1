import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _CounterScreenState();
  }
  
}
class _CounterScreenState extends State<CounterScreen>
{
  int _counter=0;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text('Counter'),),
      body: Column(
        children: [
          Text('Counter ${_counter}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          ElevatedButton(onPressed:(){
            
            setState(() {
              _counter++;
            print('Counter ${_counter}');
              
            });

          }, child: Text('+',style: TextStyle(fontSize: 20),))
        ],
      ),
    );
   
  }
  
}