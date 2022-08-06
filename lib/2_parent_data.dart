import 'package:flutter/material.dart';




class ParentData extends InheritedWidget {
  final String sampleText;

  const ParentData({required this.sampleText, required Widget child, Key? key}) : super(child: child, key: key);

  static ParentData of(BuildContext context) {
    assert(debugCheckHasMediaQuery(context));
    final result = context.dependOnInheritedWidgetOfExactType<ParentData>();
    assert(result != null, 'No ParentData found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ParentData oldWidget) {
    return sampleText != oldWidget.sampleText;
  }
}

