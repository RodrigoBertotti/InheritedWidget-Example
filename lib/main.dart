import 'package:flutter/material.dart';
import 'package:inherited_widgets/3_child_widget.dart';
import 'package:inherited_widgets/1_parent_widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inherited Widgets Example'),
      ),
      body: StatefulBuilder(
        builder: (context, setState) {
          print('This StatefulBuilder will not rebuild as the tick increases');

          return ParentWidget(
            child: const ChildWidget(),
          );
        },
      )
    );
  }
}
