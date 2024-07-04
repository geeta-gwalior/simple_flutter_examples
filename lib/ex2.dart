import 'package:android_projects/signup.dart';
import 'package:flutter/material.dart';


class ex22 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.black,
            Colors.grey
          ]
        )
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image(image: AssetImage('assets/imgs/rock.png'),width: 100, height: 100,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
              }, child: Text("Sign Up")),
              SizedBox(width: 5,),
              ElevatedButton(onPressed: (){}, child: Text("Sign in"))
            ],
          )

        ],
      ),
    ),
    );
  }
}
