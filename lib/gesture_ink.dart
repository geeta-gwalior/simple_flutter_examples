import 'dart:ui';

import 'package:flutter/material.dart';

class actions extends StatefulWidget {
  const actions({super.key});

  @override
  State<actions> createState() => _actionsState();
}

class _actionsState extends State<actions> {

  List<Color> cl=[Colors.blue,Colors.purple];
  Color x=Colors.red;
  Color y=Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: (){

              setState(() {
                x=cl[0];
              });

            },
          child:Container(height: 200,width: 200,color: x,),
          ),
          InkWell(
            onTap: (){
              setState(() {
                y=cl[1];
              });
            },
          child:Container(height: 200,width: 200,color: y,)
          )
        ],
      ),
    );
  }
}
