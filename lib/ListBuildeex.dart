import 'package:flutter/material.dart';

class listb extends StatefulWidget {
  const listb({super.key});

  @override
  State<listb> createState() => _listbState();
}

class _listbState extends State<listb> {

  List<String> l=["aaa","bbb","ccc","ddd"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:ListView.builder(itemBuilder: (context,index){
        //int x=index+1;
        return Text(l[index]);
      },
      itemCount: l.length,

      )

    );
  }
}
