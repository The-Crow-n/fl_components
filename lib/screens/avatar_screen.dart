import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Avatar'),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(child: Text('PB'),
          backgroundColor: Colors.lightGreen,
          ),
        )
      ],),
      body: const Center(
         child: Text('AvatarScreen'),
      ),
    );
  }
}