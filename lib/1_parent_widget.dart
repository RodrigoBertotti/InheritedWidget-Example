
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:inherited_widgets/2_parent_data.dart';


class ParentWidget extends StatefulWidget {
  Widget child;

  ParentWidget({Key? key, required this.child}) : super(key: key);

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  String _sampleText = '';

  @override
  Widget build(BuildContext context) {
    print("(1) Rebuilding ParentWidget");

    return ParentData(
      sampleText: _sampleText,
      child: widget.child,
    );
  }

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _sampleText = 'ParentData (InheritedWidget) changed ${timer.tick} times';
      });
    });
  }
}
