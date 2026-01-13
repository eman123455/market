import 'package:flutter/material.dart';

class USerComment extends StatelessWidget {
  const USerComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Username', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Row(children: [Text('Comment')]),
        Row(
          children: [
            Text('Replay:-', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Row(children: [Text('Replay.......')]),
      ],
    );
  }
}