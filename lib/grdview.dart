import 'package:flutter/material.dart';

class grd extends StatefulWidget {
  const grd({super.key});

  @override
  State<grd> createState() => _grdState();
}

class _grdState extends State<grd> {
  List<Color> col=[Colors.red,Colors.green,Colors.yellow,Colors.black,Colors.blue,Colors.pink,Colors.teal,Colors.orange];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),
      //
      //   itemBuilder: (context,index){
      //
      //   return Container(color: col[index],margin: EdgeInsets.all(20.0),);
      //
      //
      //
      //
      // },
      // itemCount: col.length,
      //
      //
      // ),




      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        children: [
          Container(color:col[0],


          ),
          Container(color:col[1]),
          Container(color:col[2]),
          Container(color:col[3]),
          Container(color:col[4]),
          Container(color:col[5]),
          Container(color:col[6]),
          Container(color:col[7]),

        ],
        ),
      ),

    );
  }
}
