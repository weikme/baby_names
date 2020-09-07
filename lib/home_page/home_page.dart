import 'package:flutter/material.dart';

import 'widgets/build_body.dart';

// ignore: use_key_in_widget_constructors
class MyHomePageState extends StatelessWidget {
  ///I did it with [extension ... on MyHomePageState] to learn new things (it can also be done with [StatelessWidget]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Baby Name Votes')),
      body: SafeArea(child: buildBody(context)),
    );
  }
}
