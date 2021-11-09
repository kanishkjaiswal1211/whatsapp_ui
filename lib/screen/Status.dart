import 'package:flutter/material.dart';
import '../reusable/Wcards.dart';
import '../models/model/chat.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Wcards(
            "Mystatus",
            "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
            "Tap to add status"),
        Divider(),
        Heading("Recent update"),
        Wcards("Lovely professional university", messageData[0].imageUrl,
            messageData[2].time),
        Divider(),
        Heading("today"),
        Wcards(
            messageData[3].name, messageData[3].imageUrl, messageData[3].time),
        Wcards(
            messageData[4].name, messageData[4].imageUrl, messageData[4].time),
      ],
    );
  }
}

class Heading extends StatelessWidget {
  final String heading;
  Heading(this.heading);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.only(left: 5.0, top: 5.0),
      child: Text(
        heading,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    ));
  }
}
