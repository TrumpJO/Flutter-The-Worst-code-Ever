import 'dart:ffi';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_sunday/custome_extensions/bool_ext.dart';
import 'package:flutter_sunday/main.dart';
import 'package:flutter_sunday/screens/abdularaheem_screens/abdularaheem_home.dart';
import 'package:flutter_sunday/screens/abdularaheem_screens/abdularaheem_listtile.dart';
import 'package:flutter_sunday/themes/theme_values.dart';
import 'package:flutter_sunday/custome_widgets/cust_dialog.dart';
import 'custome_widgets/cust_nav.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool myValue2 = false;
  bool myvalue3 = false;

  List<Color> homeBackGroundColors = ThemeValues.brightColorsBackground;

  @override
  Widget build(BuildContext context) {
    var blockOfAbdularaheemCode_num01 =
        Center(child: Abdularaheem_Home.homeElevatedButton(context));
    var blockOfAbdularaheemCode_num02 = Center(child: Abdularaheem_ListTile());

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: blockOfAbdularaheemCode_num02,
      ),
    );
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
    // );
  }
}
