import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'home_page/home_page.dart';

Future<dynamic> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(accentColor: Colors.amber[800]),
      title: 'Baby Names_',
      home: MyHomePageState(),
    );
  }
}
