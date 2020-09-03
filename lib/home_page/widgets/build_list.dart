import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';
import 'build_list_items.dart';

extension BuildList on MyHomePageState {
  Widget buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: snapshot.map((data) => buildListItem(context, data)).toList(),
    );
  }
}
