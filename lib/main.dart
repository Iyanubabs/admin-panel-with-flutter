import 'package:admin_panel/widget_tree.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blue,
          scaffoldBackgroundColor: Constants.purpleDark,
          canvasColor: Constants.purpleLight),
      home: WidgetTree(),
    );
  }
}
