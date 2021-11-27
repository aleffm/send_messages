import 'dart:convert';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:send_messages/Models/Messages.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';

class BodyCreate extends StatelessWidget {

  final reciverController = TextEditingController();
  final titleController = TextEditingController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
          decoration:
              BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: kDefaultPadding / 4,
                      ),
                      Expanded(
                          child: TextFormField(
                            controller: reciverController,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 1,
                        validator: (value) => EmailValidator.validate(value!)
                            ? null
                            : "Pleses enter a valid e-mail",
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                            labelText: "Reciver",
                            hintText: "Reciver",
                            border: InputBorder.none),
                      )
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
          decoration:
              BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  // height: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: kDefaultPadding / 4,
                      ),
                      Expanded(
                          child: TextField(
                            controller: titleController,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 2,
                        textCapitalization: TextCapitalization.words,
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                            labelText: "Title",
                            hintText: "Title",
                            border: InputBorder.none),
                      )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
          decoration:
              BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: kDefaultPadding / 4,
                      ),
                      Expanded(
                          child: TextField(
                            controller: messageController,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 200,
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                            labelText: "Message",
                            hintText: "Message",
                            border: InputBorder.none),
                      )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            _getButtomSend(),
            _getButtomSave(),
          ],
        ),
      ],
    );
    throw UnimplementedError();
  }

  _getButtomSend() => Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: OutlinedButton(
          onPressed: () {
            _getAll(true);
          },
          child: Text("Send")
      ),
    ),
  );
  _getButtomSave() => Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: OutlinedButton(
          onPressed: () {
            _getAll(false);
          },
          child: Text("Save")
      ),
    ),
  );

  void _getAll(bool isSend) {
    String reciver = reciverController.text;
    String title = titleController.text;
    String msg = messageController.text;
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);
    String formattedDate = date.toString().substring(0,10);
    String date_create = formattedDate;

    Messages message = Messages(person: reciver, title: title, message: msg, time_create: date_create, isActive: isSend);
    saveInstanceMessage(message);
  }
}

void saveInstanceMessage(Messages messages) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  if(prefs != null){
    final String? messageString = prefs.getString(kSharedMessage);
    final Map<String, dynamic> mapString = jsonDecode(messageString ?? "");
    Messages msg = Messages.fromJson(mapString);

    print(messageString);
    print(mapString);
    print(msg.person);
  }

    final Map<String, dynamic> mapJson = messages.toJson();
    String Jmsg = mapJson.toString();
    await prefs.setString(kSharedMessage, Jmsg);

}


