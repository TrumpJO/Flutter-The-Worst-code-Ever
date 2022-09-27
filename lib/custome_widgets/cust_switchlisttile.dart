import 'package:flutter/material.dart';
import 'package:flutter_sunday/custome_extensions/bool_ext.dart';
import 'package:flutter_sunday/screens/abdularaheem_screens/abdularaheem_listtile.dart';

class Cust_SwitchListTile extends StatefulWidget {
  void revertSwitchValue() {
    // print("Swtich Val Revered");
    //_value = _value.reverseValue();
  }
  final Function(bool ValueOnChanged) ?function;
//bool _value = false ;
  final bool value;
  String _title = "";
  String _subTitle = "";
  Icon? _secondary;
  Cust_SwitchListTile({
    super.key,
    //required Function(bool ValueOnChanged) function,

    String title = "",
    String subTitle = "",
    Icon? secondary,
    required this.function,
    required this.value,
  }) {
    //_function = function;
    // setFunction(function());
    // _value = value :
    _title = title;
    _subTitle = subTitle;
    _secondary = secondary;
  }

  @override
  State<Cust_SwitchListTile> createState() => _Cust_SwitchListTileState();
}

class _Cust_SwitchListTileState extends State<Cust_SwitchListTile> {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      //value: widget._value,
      value: widget.value,
      onChanged: (ValueOnChanged) {
        setState(
          () {
            print("\n,\n.\nsetState has been Activated!");
            widget.function!(ValueOnChanged);
            print(widget.function!(ValueOnChanged).toString());
          },
        );
      },
      title: Text(widget._title),
      subtitle: Text(widget._subTitle),
      secondary: widget._secondary,
    );
  }

//   void setFunction(Function function) {
//   _function = function(_value);
// }

}

// void revertSwitchValue() {
//   print("revertSwitchValue");
//   _value = _value.reverseValue();
// }
