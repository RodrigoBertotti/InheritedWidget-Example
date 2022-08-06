import 'package:flutter/material.dart';

import '2_parent_data.dart';


class ChildWidget extends StatelessWidget {
  const ChildWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('(2) Rebuilding ChildWidget');
    print('');

    final updatedData = ParentData.of(context).sampleText;

    return Center(
      child: Text(updatedData, textAlign: TextAlign.center, ),
    );
  }
}
