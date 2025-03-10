import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.greenAccent)),
                Expanded(child: Container(color: Colors.indigoAccent)),
                Expanded(child: Container(color: Colors.pinkAccent)),
                Expanded(child: Container(color: Colors.limeAccent)),
              ],
            ),
          ),
          Spacer(flex: 2),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [Text('data'), Text('data2'), Text('data3')],
            ),
          ),
          SizedBox(
            height: ProjectContainerSized.cardHeight,
            child: Column(
              children: [
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectContainerSized {
  static const double cardHeight = 200;
}

/*
 Column(
        children: [
          Expanded(flex: 3, child: Container(color: Colors.blueGrey)),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.greenAccent)),
                Expanded(child: Container(color: Colors.indigoAccent)),
                Expanded(child: Container(color: Colors.pinkAccent)),
                Expanded(child: Container(color: Colors.limeAccent)),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 11, 30, 21),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 183, 193, 247),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 104, 5, 38),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 180, 181, 166),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 32, 31, 45),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 113, 167, 32),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 188, 114, 24),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 125, 20, 20),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(color: const Color.fromARGB(255, 2, 77, 41)),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 43, 45, 61),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 231, 3, 79),
                  ),
                ),
                Expanded(
                  child: Container(color: const Color.fromARGB(255, 66, 71, 6)),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 4, 244, 128),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 139, 144, 174),
                  ),
                ),
                Expanded(
                  child: Container(color: const Color.fromARGB(255, 67, 2, 24)),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 223, 236, 79),
                  ),
                ),
              ],
            ),
          ),
        ],
      ), */
