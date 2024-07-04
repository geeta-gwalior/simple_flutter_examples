import 'dart:async';

import 'package:android_projects/ex2.dart';
import 'package:android_projects/signup.dart';
import 'package:flutter/material.dart';

class spl extends StatefulWidget {



  @override
  State<spl> createState() => _splState();
}

class _splState extends State<spl> {
int _sel=0;
void selected(int v){
  setState(() {
    _sel=v;
  });
}
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),

      ),
      drawer: Drawer(

        child: ListView(
          children: [
            DrawerHeader(

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('imgs/bg.jpg'),
                    fit:BoxFit.cover

                  )

                ),
                child: Text("")),

            ListTile(
              selectedColor: Colors.teal,
              selected: _sel==0,
              title: Text("Item 1"),
              leading: Icon(Icons.home),
              hoverColor: Colors.grey,

              onTap: (){
                selected(0);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ex22()));
              },
              trailing: Icon(Icons.ac_unit),
            ),
            new Divider(
              thickness: 1,
            ),
            ListTile(
              selectedColor: Colors.teal,
              selected: _sel==1,
              title: Text("Item 1"),
              leading: Icon(Icons.home),
              hoverColor: Colors.grey,

              onTap: (){
                selected(1);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ex22()));
              },
              trailing: Icon(Icons.ac_unit),
            ),  ListTile(
              title: Text("Item 1"),
              leading: Icon(Icons.home),
              hoverColor: Colors.grey,

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ex22()));
              },
              trailing: Icon(Icons.ac_unit),
            ),  ListTile(
              title: Text("Item 1"),
              leading: Icon(Icons.home),
              hoverColor: Colors.grey,

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ex22()));
              },
              trailing: Icon(Icons.ac_unit),
            ),  ListTile(
              title: Text("Item 1"),
              leading: Icon(Icons.home),
              hoverColor: Colors.grey,

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ex22()));
              },
              trailing: Icon(Icons.ac_unit),
            )

          ],

        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('imgs/bg2.jpg'),
              fit: BoxFit.cover,
              opacity: 0.4

            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/imgs/rock.png',height: 200,width: 200,)
            ],
          ),
        ),
      ),

    );
  }
}
