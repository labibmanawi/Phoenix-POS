import 'package:flutter/material.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text('D E S K T O P'),
      ),
      body: Row(
        children: [
          //FIRST COLUMN
          Expanded(
            child: Column(
              children: [
                //youtube video
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      color: Colors.deepPurple[200],
                    ),
                  ),
                ),

                //comment section & recommended videos
                Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(
                          8.0,
                        ),
                        child: Container(
                          color: Colors.deepPurple[400],
                          height: 120,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),

          //SECOND COLUMN
          Container(
            width: 200,
            color: Colors.deepPurple[300],
          ),
        ],
      ),
    );
  }
}
