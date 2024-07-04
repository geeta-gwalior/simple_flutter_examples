import 'package:android_projects/largeimage.dart';
import 'package:android_projects/signup.dart';
import 'package:flutter/material.dart';

class anim100 extends StatefulWidget {
  const anim100({super.key});

  @override
  State<anim100> createState() => _anim100State();
}

class _anim100State extends State<anim100> with SingleTickerProviderStateMixin {
  late AnimationController ac;
  late Animation anim;
  late Animation coloranim;

  @override
  void initState() {

    ac=AnimationController(vsync: this,duration: Duration(seconds: 4));
    anim=Tween(begin: 0.0,end: 200.0).animate(ac);
    coloranim=ColorTween(begin: Colors.blue,end: Colors.yellow).animate(ac);
    ac.forward();
    ac.addListener((){
      setState(() {

      });
    });

    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    ac.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animation"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),

      body:Center(
        child: InkWell(

          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>large()));
          },

        child:Hero(
        tag: 'background',
        child:Container(
          // width: anim.value,
          // height: anim.value,
          // color: coloranim.value,
            child: Image.asset("assets/imgs/rock.png",height: 100,width: 100,),
        ),
      )

    )));
  }
}
