import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../data/record.dart';
import '../home_page.dart';

extension BuildListItem on MyHomePageState {
  Widget buildListItem(BuildContext context, DocumentSnapshot data) {
    final record = Record.fromSnapshot(data);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
      child: Card(
        shape: const StadiumBorder(
          side: BorderSide(
            color: Colors.black38,
            width: 1.5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                record.name.toString(),
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => FirebaseFirestore.instance
                        .runTransaction((transaction) async {
                      final freshSnapshot = Record.fromSnapshot(
                          await transaction.get(record.reference));
                      transaction.update(record.reference,
                          <String, dynamic>{'votes': freshSnapshot.votes + 1});
                    }),
                    child: const Icon(
                      Icons.thumb_up,
                      size: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                    height: 40,
                  ),
                  Text(
                    record.votes.toString(),
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
