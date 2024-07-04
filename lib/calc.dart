

import 'package:android_projects/signup.dart';
import 'package:flutter/material.dart';


class sum extends StatefulWidget {
  

  @override
  State<sum> createState() => _sumState();
}

class _sumState extends State<sum> {
  
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  
  int? a,b,c;
  String ans="+";
  void sums(){
    a=int.parse(t1.text);
    b=int.parse(t2.text);
    setState(() {
      c=a!~/b!;
      ans="ans is "+c.toString();
    });
  }

  String uid="",pwd="";
  void login(){
    uid=t1.text;
    pwd=t2.text;
    if(uid == "Admin" && pwd == "123@"){

      Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));

    }
    else
      setState(() {
        ans="uid or pwd is wrong";
      });

  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orange,
              Colors.white
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

               TextField(
           controller: t1,

           decoration: InputDecoration(
             border: OutlineInputBorder(),
             label: Text("enter first value"),
             hintText: "0-9",



           ),


               ),

              SizedBox(height: 20,),
              TextField(
                controller: t2,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),

                    label: Text("enter second value"),
                  hintText: "0-9"
                ),


              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){
                    sums();
                  },child:Text("$ans") ,),
                  ElevatedButton(onPressed: (){
                    sums();
                  },child:Text("+") ,),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){
                    sums();
                  },child:Text("+") ,),
                  ElevatedButton(onPressed: (){
                    login();
                  },child:Text("Login") ,),
                ],
              ),
              SizedBox(height: 30,),
              Text("$ans",style: TextStyle(color: Colors.blue),),

            ],
          ),
        ),
      ),
    );
  }
}
