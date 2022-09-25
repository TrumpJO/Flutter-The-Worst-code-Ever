import 'package:flutter/material.dart';

import '../screens/the_home.dart';
import 'cust_nav.dart';

class Cust_Dialog {
  static Future<dynamic> dialogYesNoConfirmation({
    required BuildContext context,
    String question = "Are you Sure?",
    // ToDo: 
    // Function yesBtnFunction = (){},
    // Function yesBtnFunction = (){},
  }) {
    return Cust_Dialog.showCustomeDialog(
      context: context,
      widget: [
        _question_Container(question),
        _yesNo_BtnBar(context),
      ],
    );
  }

  static Future<dynamic> showCustomeDialog(
      {required BuildContext context, List<Widget>? widget}) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: widget,
        );
      },
    );
  }

  static Container _question_Container(String question) {
    return Container(
      alignment: Alignment.topCenter,
      child: Text(question),
      padding: EdgeInsets.only(
        top: 4,
        bottom: 8,
      ),
    );
  }

  static ButtonBar _yesNo_BtnBar(BuildContext context) {
    BuildContext _context = context;
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: [
        _yesElevatedBtn(context: _context),
        SizedBox(width: 10),
        _noElevatedBtn(context: _context),
      ],
    );
  }

  static ElevatedButton _yesElevatedBtn({
    required BuildContext context,
  }) {
    return ElevatedButton(
      onPressed: () {
        Cust_Nav.goToPreviousPage(context);
        // ToDo: Dynamic Function here, to replace goToHomePage.
        TheHome.goToHomePage(context);
      },
      child: Text("Yes"),
    );
  }

  static ElevatedButton _noElevatedBtn({
    required BuildContext context,
  }) {
    return ElevatedButton(
      onPressed: () {
        Cust_Nav.goToPreviousPage(context);
      },
      child: Text("No"),
    );
  }
}
