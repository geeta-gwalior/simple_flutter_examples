import 'package:flutter/material.dart';

class second extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width:100 ,
              color: Colors.red,
            ),
            SizedBox(height: 30,),
            Text("Xyz.com"),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.home))
          ],
        ),
      ),

    );
  }
}
