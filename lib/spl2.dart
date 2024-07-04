import 'package:flutter/material.dart';

class splash2 extends StatefulWidget {
  const splash2({super.key});

  @override
  State<splash2> createState() => _splash2State();
}

class _splash2State extends State<splash2> {
  int select=0;
  void selectchange(int v){
    setState(() {
      select=v;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54
      ),
      drawer: Drawer(

        child: ListView(
          children: [
            DrawerHeader(
            margin: EdgeInsets.all(0.0),
                // decoration: BoxDecoration(
                //     image: DecorationImage(
                //         image: AssetImage('imgs/bg.jpg'),
                //         fit:BoxFit.cover
                //
                //     )

                //),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("assets/imgs/rock.png"),height: 50,width: 40,),

                      Text("Main Menu"),
                    ],
                  ),
                )),




            ListTile(
              selected: select==0,
              selectedColor: Colors.red,
              //tileColor: Colors.blue,
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.info_outline),
              //hoverColor: Colors.brown,
              onTap: (){
                print("first");
                selectchange(0);
              },

            ),
        ListTile(
          selected: select==1,
            selectedColor: Colors.red,
            //tileColor: Colors.blue,
            leading: Icon(Icons.home),
            title: Text("Home"),
            trailing: Icon(Icons.info_outline),
            //hoverColor: Colors.brown,
            onTap: (){
              print("first");
              selectchange(1);
            },),
        ListTile(
          selected: select==2,
          selectedColor: Colors.red,
          //tileColor: Colors.blue,
          leading: Icon(Icons.home),
          title: Text("Home"),
          trailing: Icon(Icons.info_outline),
          //hoverColor: Colors.brown,
          onTap: (){
            print("first");
            selectchange(2);
          },),

            new Divider(
              thickness: 2,
            ),
            ListTile(
              selected: select==4,
              selectedColor: Colors.red,
              //tileColor: Colors.blue,
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.info_outline),
              //hoverColor: Colors.brown,
              onTap: (){
                print("first");
                selectchange(4);
              },),
          ],
        ),




      ),




      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/imgs/bg2.jpg'),
                fit: BoxFit.cover,
            opacity: 0.3,

          )
        ),
      ),
bottomNavigationBar: BottomAppBar(
  color: Colors.blue,
  height: 50,
),
      floatingActionButton: FilledButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
    );
  }
}
