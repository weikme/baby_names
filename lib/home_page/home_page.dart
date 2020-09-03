import 'package:flutter/material.dart';

import 'widgets/build_body.dart';

// ignore: use_key_in_widget_constructors
class MyHomePageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Baby Name Votes')),
      body: SafeArea(child: buildBody(context)),
    );
  }
}
