import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Avatar'),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://ih1.redbubble.net/image.2517271689.2840/raf,360x360,075,t,fafafa:ca443f4786.jpg'),
            child: Text('PB'),
          ),
        )
      ],),
      body: const Center(
         child: Text('AvatarScreen'),
      ),
    );
  }
}