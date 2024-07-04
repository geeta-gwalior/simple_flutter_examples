import 'package:flutter/material.dart';

class large extends StatefulWidget {
  const large({super.key});

  @override
  State<large> createState() => _largeState();
}

class _largeState extends State<large> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Hero(
        tag: 'background',
        child: Image.asset("assets/imgs/rock.png"),
      ),

    );
  }
}
