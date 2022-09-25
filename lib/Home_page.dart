import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_sunday/main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool myValue = true;
  bool myValue2 = false;
  bool myvalue3 = false;
  List<Color> Mycolors = [Colors.pink, Colors.white];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       ElevatedButton.icon(
          //           onPressed: () {
          //             showDialog(
          //               context: context,
          //               builder: (context) {
          //                 return AlertDialog(
          //                   actions: [
          //                     Container(
          //                         alignment: Alignment.topCenter,
          //                         child: Text("Do you want to go to home page?")),
          //                     Divider(
          //                       height: 25,
          //                     ),
          //                     Container(
          //                       child: Row(
          //                         mainAxisAlignment: MainAxisAlignment.center,
          //                         children: [
          //                           ElevatedButton(
          //                               onPressed: () {
          //                                 showDialog(
          //                                     context: context,
          //                                     builder: (context) {
          //                                       return AlertDialog(
          //                                         content: Image.network(
          //                                             "https://th.bing.com/th/id/OIP.qHAHjx6Gzs-A_jN6a8g_RAHaE-?pid=ImgDet&rs=1"),
          //                                       );
          //                                     });
          //                               },
          //                               child: Text("Yes")),
          //                           SizedBox(
          //                             width: 15,
          //                           ),
          //                           ElevatedButton(
          //                               onPressed: () {
          //                                 Navigator.pop(context, MaterialPageRoute(
          //                                   builder: (context) {
          //                                     return MyApp();
          //                                   },
          //                                 ));
          //                               },
          //                               child: Text("No")),
          //                         ],
          //                       ),
          //                     )
          //                   ],
          //                 );
          //               },
          //             );
          //           },
          //           icon: Icon(Icons.home),
          //           label: Text("Home"))
          //     ],
          //   ),
          ),

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       SwitchListTile(
      //           value: myValue,
      //           onChanged: ((value) {
      //             setState(() {
      //               myValue = !myValue;
      //             });
      //             showDialog(
      //                 context: context,
      //                 builder: ((context) {
      //                   return AlertDialog(
      //                     actions: [
      //                       Container(
      //                           alignment: Alignment.topCenter,
      //                           child:
      //                               Text("Do you want to go to home page?")),
      //                       Divider(
      //                         height: 25,
      //                       ),
      //                       Container(
      //                         child: Row(
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           children: [
      //                             ElevatedButton(
      //                                 onPressed: () {
      //                                   showDialog(
      //                                       context: context,
      //                                       builder: (context) {
      //                                         return AlertDialog(
      //                                           content: Image.network(
      //                                               "https://th.bing.com/th/id/OIP.qHAHjx6Gzs-A_jN6a8g_RAHaE-?pid=ImgDet&rs=1"),
      //                                         );
      //                                       });
      //                                 },
      //                                 child: Text("Yes")),
      //                             SizedBox(
      //                               width: 15,
      //                             ),
      //                             ElevatedButton(
      //                                 onPressed: () {
      //                                   Navigator.pop(context,
      //                                       MaterialPageRoute(
      //                                     builder: (context) {
      //                                       return MyApp();
      //                                     },
      //                                   ));
      //                                 },
      //                                 child: Text("No")),
      //                           ],
      //                         ),
      //                       )
      //                     ],
      //                   );
      //                 }));
      //           }))
      //     ],
      //   ),
      // )
      // body: Container(
      //   decoration: BoxDecoration(gradient: LinearGradient(colors: Mycolors)),
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         SwitchListTile(
      //           secondary: Icon(Icons.exit_to_app),
      //           title: Text(
      //             "Exit the App",
      //             style: TextStyle(fontSize: 28),
      //           ),
      //           subtitle: Text(
      //             "It's hard to see you leave :( ",
      //             style: TextStyle(fontSize: 20),
      //           ),
      //           value: myValue,
      //           onChanged: (val) {
      //             setState(() {
      //               myValue = !myValue;
      //               exit(0);
      //             });
      //           },
      //         ),
      //         SwitchListTile(
      //           title: Text(
      //             "show contact information",
      //             style: TextStyle(fontSize: 22),
      //           ),
      //           subtitle: Text("Email,Mobile,Etc"),
      //           value: myValue2,
      //           onChanged: (value) {
      //             showDialog(
      //                 context: context,
      //                 builder: (context) {
      //                   return AlertDialog(
      //                     actions: [
      //                       Text("Do you want to proceed ?"),
      //                       Text("yes"),
      //                       Text("No")
      //                     ],
      //                     backgroundColor: Colors.green.shade300,
      //                     content: Container(
      //                       color: Colors.lime.shade300,
      //                       child: Column(
      //                         children: [
      //                           Divider(
      //                             height: 100,
      //                           ),
      //                           Container(
      //                             color: Colors.purple,
      //                             child: Row(
      //                               children: [
      //                                 Text("Mobile"),
      //                                 Text("962 797777777")
      //                               ],
      //                             ),
      //                           ),

      //                           Divider(
      //                             height: 100,
      //                           ),
      //                           Container(
      //                             color: Colors.amber,
      //                             child: Row(
      //                               children: [
      //                                 Text("Email"),
      //                                 Text("Example@example.com")
      //                               ],
      //                             ),
      //                           )
      //                         ],
      //                       ),
      //                     ),
      //                   );
      //                 });
      //             setState(() {
      //               myValue2 = !myValue2;
      //             });
      //           },
      //         ),
      //         SwitchListTile(
      //           title: Text(
      //             "do you want to active the dark mode ? ",
      //             style: TextStyle(fontSize: 20),
      //           ),
      //           value: myvalue3,
      //           onChanged: (value) {
      //             setState(() {
      //               myvalue3=!myvalue3;
      //               Mycolors = [Colors.pink, Colors.black];
      //             });
      //           },
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
