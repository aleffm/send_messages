import 'package:flutter/material.dart';
import 'package:send_messages/components/body_edit.dart';

import '../constants.dart';

class EditScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BodyEdit(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: kPrimaryColor,
      //   child: Icon(
      //     Icons.menu,
      //     color: Colors.white,
      //   ),
      // ),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Title test", style: TextStyle(fontSize: 18),),
      ],
      ),
    );
    throw UnimplementedError();
  }



}