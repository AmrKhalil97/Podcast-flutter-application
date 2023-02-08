import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'modules/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      MyApp(
    widget: login(),
  ));
}

class MyApp extends StatelessWidget {
  var widget;
  MyApp({super.key, this.widget});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: widget,
    );
  }
}
