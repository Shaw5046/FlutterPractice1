import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: UserCard(),
    ));

//  15 user id project 16 stateful widget

class UserCard extends StatefulWidget {
  @override
  _UserCardState createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  int rankMMR = 4330;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("DODO ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            rankMMR += 30;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: CircleAvatar(
              backgroundImage: AssetImage('assets/dodo.jpg'),
              radius: 50.0,
            )),
            Divider(
              height: 50,
              color: Colors.grey[800],
            ),
            //////////////////////////////
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "DODO",
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),

            ///////////////////////////////////
            Text(
              "RankMMR",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$rankMMR",
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),

            ////////////////////////////////
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Text("dodoofficial@gmail.com",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 22,
                      letterSpacing: 1.0,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// 14 expanded widgets
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text('my first app'),
//           centerTitle: true,
//           backgroundColor: Colors.red[600]),
//       body: Row(
//         children: [
//           Expanded(flex: 4, child: Image.asset('assets/dodo.jpg')),
//           Expanded(
//             flex: 2,
//             child: Container(
//               padding: EdgeInsets.all(30),
//               color: Colors.cyan,
//               child: Text("1"),
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(
//               padding: EdgeInsets.all(30),
//               color: Colors.pink,
//               child: Text("2"),
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: Container(
//               padding: EdgeInsets.all(30),
//               color: Colors.amber,
//               child: Text("3"),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           print('you clicked me');
//         },
//         backgroundColor: Colors.red[600],
//         child: Text('click'),
//       ),
//     );
//   }
// }

// 12 columns 13 flutter outline & shortcut
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text('my first app'),
//           centerTitle: true,
//           backgroundColor: Colors.red[600]),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Row(
//             children: [
//               Text("11111"),
//               Text("22222"),
//             ],
//           ),
//           Container(
//             padding: EdgeInsets.all(20),
//             color: Colors.cyan,
//             child: Text("one"),
//           ),
//           Container(
//             padding: EdgeInsets.all(30),
//             color: Colors.pink,
//             child: Text("two"),
//           ),
//           Container(
//             padding: EdgeInsets.all(40),
//             color: Colors.amber,
//             child: Text("three"),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           print('you clicked me');
//         },
//         backgroundColor: Colors.red[600],
//         child: Text('click'),
//       ),
//     );
//   }
// }

// 11 row
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text('my first app'),
//           centerTitle: true,
//           backgroundColor: Colors.red[600]),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("hello"),
//           FlatButton(
//             onPressed: () {},
//             color: Colors.amber,
//             child: Text("click me"),
//           ),
//           Container(
//             color: Colors.cyan,
//             padding: EdgeInsets.all(30.0),
//             child: Text("inside container"),
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           print('you clicked me');
//         },
//         backgroundColor: Colors.red[600],
//         child: Text('click'),
//       ),
//     );
//   }
// }

// 10 container & padding
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text('my first app'),
//           centerTitle: true,
//           backgroundColor: Colors.red[600]),

//       body: Container(
//           // padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
//           // padding: EdgeInsets.all(30.0),
//           padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
//           margin: EdgeInsets.all(30),
//           color: Colors.grey[400],
//           child: Text("hello222222")),

//       // body: Padding(
//       //   padding: EdgeInsets.all(90),
//       //   child: Text('HELLO'),
//       // ),

//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           print('you clicked me');
//         },
//         backgroundColor: Colors.red[600],
//         child: Text('click'),
//       ),
//     );
//   }
// }

// 9
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text('my first app'),
//           centerTitle: true,
//           backgroundColor: Colors.red[600]),
//       body: Center(
//         child: IconButton(
//           onPressed: () {
//             print('you clicked me');
//           },
//           icon: Icon(Icons.alternate_email),
//           color: Colors.amber,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           print('you clicked me');
//         },
//         backgroundColor: Colors.red[600],
//         child: Text('click'),
//       ),
//     );
//   }
// }
//

// 8
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text('my first app'),
//           centerTitle: true,
//           backgroundColor: Colors.red[600]
//       ),
//       body: Center(
//         child: Image.asset('assets/space-3.jpg'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.red[600],
//         child: Text('click'),
//       ),
//     );
//   }
// }
//

// 7
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text('my first app'),
//           centerTitle: true,
//           backgroundColor: Colors.red[600]
//       ),
//       body: Center(
//         child: Text(
//           'hello again, ninjas!',
//           style: TextStyle(
//             fontSize: 20.0,
//             fontWeight: FontWeight.bold,
//             letterSpacing: 2.0,
//             color: Colors.grey[600],
//             fontFamily: 'IndieFlower',
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => {

//         },
//         backgroundColor: Colors.red[600],
//         child: Text('click'),
//       ),
//     );
//   }
// }
