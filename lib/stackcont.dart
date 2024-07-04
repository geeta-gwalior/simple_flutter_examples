import 'package:android_projects/adddata.dart';
import 'package:android_projects/cls2.dart';
import 'package:flutter/material.dart';

class containers extends StatefulWidget {


  @override
  State<containers> createState() => _containersState();
}

class _containersState extends State<containers> {

  Color cl1=Colors.red;
  Color cl2=Colors.purple;
  bool st=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 400,
                width: 400,
                color: Colors.green,
              ),
              Positioned(
                left: 50,
                top:50,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>second()));
                  },
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.red,
                  ),
                ),
              ),
              Positioned(
                left: 100,
              top:100,
              child:Container(
                height: 200,
                width: 200,
                color: Colors.yellow,
              ))

            ],

          ),
          InkWell(onTap: (){

            setState(() {
              if(st)
                st=false;
              else
                st=true;
            });

          }, child: Container(
    height: 100,
    width: 100,
    color: st?cl1:cl2

    ),)
        ],
      ),

    );
  }
}
