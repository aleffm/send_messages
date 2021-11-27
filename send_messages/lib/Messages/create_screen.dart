import 'package:flutter/material.dart';
import 'package:send_messages/Models/Messages.dart';
import 'package:send_messages/components/body_create.dart';
import 'package:send_messages/components/body_edit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';

class CreateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BodyCreate(),
    );
  }

  AppBar buildAppBar() {
    final Messages msgs;
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New Message",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
      actions: [
        PopupMenuButton(
            itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("Save"),
                    value: 1,
                    onTap: () {},
                  ),
                  PopupMenuItem(
                    child: Text("Send"),
                    value: 2,
                  )
                ])
      ],
    );
    throw UnimplementedError();
  }
}
