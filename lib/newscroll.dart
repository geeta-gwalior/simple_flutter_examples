import 'package:flutter/material.dart';

class scroll_view extends StatefulWidget {
  const scroll_view({super.key});

  @override
  State<scroll_view> createState() => _scroll_viewState();
}

class _scroll_viewState extends State<scroll_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:SingleChildScrollView(

        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:SingleChildScrollView(

                  scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.green
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.orange
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.yellow
                    ),
                  )


                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                color: Colors.purple,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                color: Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                color: Colors.lightGreenAccent,
              ),
            )
          ],
        )

        )
      )
    );
  }
}
