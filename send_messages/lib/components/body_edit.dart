import 'package:flutter/material.dart';
import 'package:send_messages/constants.dart';
import 'package:email_validator/email_validator.dart';

class BodyEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding/4),
          decoration: BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: kDefaultPadding/4,),
                          Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.multiline,
                                minLines: 1,
                                maxLines: 1,
                                validator: (value) => EmailValidator.validate(value!) ? null : "Pleses enter a valid e-mail",
                                style: TextStyle(fontSize: 15),
                                decoration: InputDecoration(
                                    labelText: "E-mail",
                                    hintText: "E-mail",border: InputBorder.none),
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
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding/4),
          decoration: BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  // height: 20,
                  decoration: BoxDecoration(color: Colors.grey.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: kDefaultPadding/4,),
                      Expanded(
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            minLines: 1,
                            maxLines: 2,
                            textCapitalization: TextCapitalization.words,
                            style: TextStyle(fontSize: 15),
                            decoration: InputDecoration(
                                labelText: "Title",
                                hintText: "Title",border: InputBorder.none),
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
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding/4),
          decoration: BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: kDefaultPadding/4,),
                      Expanded(
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            minLines: 1,
                            maxLines: 200,
                            style: TextStyle(fontSize: 15),
                            decoration: InputDecoration(
                                labelText: "Message",
                                hintText: "Message",border: InputBorder.none),
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                  vertical: kDefaultPadding/4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("created by: ",
                  ),
                  Text("Aleff")
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                  vertical: kDefaultPadding/4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("created in: ",
                  ),
                  Text("01/10/2021")
                ],
              ),
            ),
          ],
        ),
      ],
    );
    throw UnimplementedError();
  }

}