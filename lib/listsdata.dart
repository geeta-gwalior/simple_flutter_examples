import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyApp1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Firestore Demo'),
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("users").snapshots(),
          builder: (BuildContext context,AsyncSnapshot<QuerySnapshot>snapshot){
            if(snapshot.hasError){
              return Center(
                child: Text('Error : ${snapshot.error}'),
              );
            }
            if(snapshot.connectionState == ConnectionState.waiting){
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (BuildContext context,int index){
                  DocumentSnapshot doc= snapshot.data!.docs[index];
                  return ListTile(
                    title: Text(doc['uname']),
                    subtitle: Text(doc['email']),
                    
                  );
            },
            );
          },
        ),
      ),
    );
  }
}
