import 'package:flutter/material.dart';

class BulbStateMngt extends StatefulWidget {
  const BulbStateMngt({super.key});

  @override
  State<BulbStateMngt> createState() => _BulbStateMngtState();
}

class _BulbStateMngtState extends State<BulbStateMngt> {
  bool _isOnState=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _isOnState?Image.asset('assets/Images/on.png',height: 200,width: 200,)
          :Image.asset('assets/Images/off.png',height: 200,width: 200,),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            setState(() {
              _isOnState=!_isOnState;
            });

          }, child:_isOnState?Text('OFF'): Text('ON'))
        ],
      ),
    );
  }
}