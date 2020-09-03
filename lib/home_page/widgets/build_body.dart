import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';
import 'build_list.dart';

extension BuildBody on MyHomePageState {
  Widget buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('baby names').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const LinearProgressIndicator();
        return buildList(context, snapshot.data.docs);
      },
    );
  }
}
