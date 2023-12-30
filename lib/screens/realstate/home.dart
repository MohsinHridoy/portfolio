import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   List<String> dataList = ["Item 1", "Item 2", "Item 3", "Item 4"];
//   int currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Swapping Containers'),
//       ),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Draggable(
//               data: currentIndex,
//               child: buildContainer(dataList[currentIndex]),
//               feedback: buildContainer(dataList[currentIndex]),
//               childWhenDragging: Container(), // Hide when dragging
//               onDragEnd: (details) {
//                 if (details.wasAccepted) {
//                   setState(() {
//                     currentIndex = (currentIndex + 1) % dataList.length;
//                   });
//                 }
//               },
//             ),
//             SizedBox(width: 16.0),
//             DragTarget<int>(
//               builder: (context, List<int?> candidateData, rejectedData) {
//                 return buildContainer(dataList[(currentIndex + 1) % dataList.length]);
//               },
//               onWillAccept: (data) {
//                 return true;
//               },
//               onAccept: (data) {
//                 // Swapping logic handled in onDragEnd of Draggable
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget buildContainer(String data) {
//     return Container(
//       width: 100.0,
//       height: 100.0,
//       color: Colors.blue,
//       child: Center(
//         child: Text(data, style: TextStyle(color: Colors.white)),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Sample list of texts for each container
  final List<String> texts = ['Text 1', 'Text 2', 'Text 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // First container (bottom)

          Positioned(
            left: 20,
            top: 20,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text(texts[0]),
              ),
            ),
          ),
          // Second container (middle)
          Positioned(
            left: 50,
            top: 50,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(
                child: Text(texts[1]),
              ),
            ),
          ),
          // Third container (top)
          Positioned(
            left: 80,
            top: 80,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(
                child: Text(texts[2]),
              ),
            ),
          ),
          Positioned(
            left: 80,
            top: 80,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
              child: Center(
                child: Text(texts[2]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}















// class DraggableContainers extends StatefulWidget {
//   @override
//   _DraggableContainersState createState() => _DraggableContainersState();
// }
//
// class _DraggableContainersState extends State<DraggableContainers> {
//   List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: items.length,
//       itemBuilder: (context, index) {
//         double size = 80.0;
//         if (index == 0) {
//           size = 100.0; // Make the first container bigger
//         } else if (index == 1) {
//           size = 90.0; // Make the second container slightly smaller
//         } else if (index == 2) {
//           size = 70.0; // Make the third container smaller
//         }
//
//         return Draggable(
//           data: items[index],
//           child: Container(
//             width: size,
//             height: size,
//             color: Colors.blue,
//             margin: EdgeInsets.all(8),
//             padding: EdgeInsets.all(16),
//             child: Text(items[index]),
//           ),
//           feedback: Container(
//             width: size,
//             height: size,
//             color: Colors.yellow.withOpacity(0.5),
//             margin: EdgeInsets.all(8),
//             padding: EdgeInsets.all(16),
//             child: Text(items[index]),
//           ),
//           childWhenDragging: Container(),
//           onDragCompleted: () {
//             setState(() {
//               // Rotate the values in the list
//               String firstItem = items.removeAt(0);
//               items.add(firstItem);
//             });
//           },
//         );
//       },
//     );
//   }
// }

