import 'package:flutter/material.dart';
import 'package:flutter_sunday/custome_extensions/bool_ext.dart';
import 'package:flutter_sunday/screens/abdularaheem_screens/abdularaheem_home.dart';

/// second blockOfAbdularaheemCode
/// num02

// class TheListTile {
//   bool blockOfAbdularaheemCode_num02_ListTileValue = true;
//   Widget TheListTile_Structure(BuildContext context) {
//     return Center(
//       child: SwitchListTile(
//         value: blockOfAbdularaheemCode_num02_ListTileValue,
//         onChanged: ((value) {
//           setState(() {
//             reverseListTileValue_blockOfAbdularaheemCode_num02();
//           });
//           if (blockOfAbdularaheemCode_num02_ListTileValue) {
//             TheHome.dialogYesNoConfirmation_Home(context: context);
//           }
//         }),
//       ),
//     );
//   }
// }

class Abdularaheem_ListTile extends StatefulWidget {
  const Abdularaheem_ListTile({super.key});

  @override
  State<Abdularaheem_ListTile> createState() => _Abdularaheem_ListTileState();
}

bool listTileValue = true;

class _Abdularaheem_ListTileState extends State<Abdularaheem_ListTile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SwitchListTile(
        value: listTileValue,
        onChanged: ((value) {
          setState(() {
            reverseListTileValue();
          });
          if (listTileValue) {
            Abdularaheem_Home.dialogYesNoConfirmation_Home(context: context);
            // to turn off the Switch on Exit, Uncomment the below:
            // reverseListTileValue();
          }
        }),
      ),
    );
  }
}

void reverseListTileValue() {
  listTileValue = listTileValue.reverseValue();
}
