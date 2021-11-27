import 'package:send_messages/Models/Messages.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class MessageCard extends StatelessWidget{
  const MessageCard({
    Key? key,
    required this.messages,
    required this.press,
  }) : super (key: key);
  final Messages messages;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: press,
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding*0.60),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(messages.person, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: 4),
                    Text(messages.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600), maxLines: 1,
                    ),
                    SizedBox(height: 4),
                    Text(messages.message, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300), maxLines: 1, overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),

            Column(
              children: [
                Opacity(
                    opacity: 0.5,
                    child: Text(messages.time_create)
                ),
                SizedBox(height: 6),
                if(messages.isActive)
                  Icon(Icons.check, color: kPrimaryColor,)
                else
                  Icon(Icons.note_alt,color: Colors.grey,)
              ],
            ),

          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
