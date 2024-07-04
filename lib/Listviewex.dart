import 'package:flutter/material.dart';
class list_view101 extends StatefulWidget {
  const list_view101({super.key});

  @override
  State<list_view101> createState() => _list_view101State();
}

class _list_view101State extends State<list_view101> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
reverse: false,

        children: [

        ListTile(
          leading: Icon(Icons.home),
          title: Text("First"),
          trailing: Icon(Icons.info),

        ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("First"),
            trailing: Icon(Icons.info),

          ),
          Divider(thickness: 2,height: 100,),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("First"),
            trailing: Icon(Icons.info),

          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("second"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Third"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Four"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Five"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Six"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Seven"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Seven"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Seven"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Seven"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Seven"),
          ),
        ],
      ),

    );
  }
}
