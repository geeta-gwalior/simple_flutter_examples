import 'package:android_projects/ListBuildeex.dart';
import 'package:android_projects/Listviewex.dart';
import 'package:android_projects/anim1.dart';
import 'package:android_projects/calc.dart';
import 'package:android_projects/cls2.dart';
import 'package:android_projects/ex2.dart';
import 'package:android_projects/gesture_ink.dart';
import 'package:android_projects/grdview.dart';
import 'package:android_projects/newscroll.dart';
import 'package:android_projects/spl2.dart';
import 'package:android_projects/splash.dart';
import 'package:android_projects/stackcont.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'logginn.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDyS9g18fNLujIppwBPo3bzzyMSdXgnhvw",
          authDomain: "new-flutter-e8c5d.firebaseapp.com",
          projectId: "new-flutter-e8c5d",
          storageBucket: "new-flutter-e8c5d.appspot.com",
          messagingSenderId: "1014434888746",
          appId: "1:1014434888746:web:a1bfeba314491c14125753",
          measurementId: "G-0EK3GF0JLY"
      )
  );

  runApp(MaterialApp(
    home: containers(),
  ));
}
class myfirstapp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First app"),
         backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.info_outline))
        ],


      ),

      body: Container(
        color: Colors.cyanAccent,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        child: Text("Hello world",style: TextStyle(
          color:Colors.red,
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),),
      ),

    );
  }
}
