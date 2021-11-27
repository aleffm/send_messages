
import 'package:flutter/material.dart';
import 'package:send_messages/Messages/edit_screen.dart';
import 'package:send_messages/Models/Messages.dart';

import '../constants.dart';
import 'filled_outline_button.dart';
import 'message_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var messageData = <Messages>[];
    messages_tests(messageData);
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: messageData.length,
            itemBuilder: (context, index) => MessageCard(
              messages: messageData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditScreen(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void messages_tests(List<Messages> messageData) {
    messageData.add(Messages(person: "Aleff", title: "test Title", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
      ,time_create: "25/11", isActive: false),);
    messageData.add(Messages(person: "Test2", title: "test Title2", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "23/11", isActive: true),);
    messageData.add(Messages(person: "Test3", title: "test Title3", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "26/11", isActive: false),);
    messageData.add(Messages(person: "Test4", title: "test Title4", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "25/11", isActive: false),);
    messageData.add(Messages(person: "Test5", title: "test Title5", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "23/11", isActive: true),);
    messageData.add(Messages(person: "Test6", title: "test Title6", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "26/11", isActive: false),);
    messageData.add(Messages(person: "Test7", title: "test Title7", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "25/11", isActive: false),);
    messageData.add(Messages(person: "Test8", title: "test Title8", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "23/11", isActive: true),);
    messageData.add(Messages(person: "Test9", title: "test Title9", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "26/11", isActive: false),);
    messageData.add(Messages(person: "Test10", title: "test Title10", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "25/11", isActive: false),);
    messageData.add(Messages(person: "Test11", title: "test Title11", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "23/11", isActive: true),);
    messageData.add(Messages(person: "Test12", title: "test Title12", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "26/11", isActive: false),);
    messageData.add(Messages(person: "Test13", title: "test Title13", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "23/11", isActive: true),);
    messageData.add(Messages(person: "Test14", title: "test Title14", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "26/11", isActive: false),);
    messageData.add(Messages(person: "Test15", title: "test Title15", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "25/11", isActive: false),);
    messageData.add(Messages(person: "Test16", title: "test Title16", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "23/11", isActive: true),);
    messageData.add(Messages(person: "Test17", title: "test Title17", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "26/11", isActive: false),);
    messageData.add(Messages(person: "Test18", title: "test Title18", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "25/11", isActive: false),);
    messageData.add(Messages(person: "Test19", title: "test Title19", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "23/11", isActive: true),);
    messageData.add(Messages(person: "Test20", title: "test Title20", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "26/11", isActive: false),);
    messageData.add(Messages(person: "Test21", title: "test Title21", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "25/11", isActive: false),);
    messageData.add(Messages(person: "Test22", title: "test Title22", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "23/11", isActive: true),);
    messageData.add(Messages(person: "Test23", title: "test Title23", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien sem, blandit at nulla a, iaculis mattis ex. In et tincidunt quam, eu dictum neque. Mauris non velit ut ante facilisis lacinia et ac mauris. Donec sed viverra leo, in lacinia leo. Proin a sem ac ipsum vehicula euismod non sit amet dui."
        ,time_create: "26/11", isActive: false),);
  }
}
