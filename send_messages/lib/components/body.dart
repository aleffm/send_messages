import 'package:flutter/material.dart';
import 'package:send_messages/Messages/edit_screen.dart';
import 'package:send_messages/Models/Messages.dart';
import 'package:send_messages/components/message_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: messagesData.length,
            itemBuilder: (context, index) => MessageCard(
              messages: messagesData[index], press: () => Navigator.push(
              context, MaterialPageRoute(
              builder: (context) => EditScreen()
            ),
            ),
            ),
          ),
        ),
      ],
    );
    throw UnimplementedError();
  }
}

