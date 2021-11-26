import 'package:flutter/material.dart';
import 'package:send_messages/constants.dart';

class BodyEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding / 2
          ),
          decoration: BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
          child: SafeArea(
            child: Row(
              children: [

              ],
            ),
          ),
        ),
      ],
    );
    throw UnimplementedError();
  }

}