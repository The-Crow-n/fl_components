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
          child: CircleAvatar(
            child: Text('PB'),
            //maxRadius: 120,
            backgroundImage: NetworkImage('https://ih1.redbubble.net/image.2517271689.2840/raf,360x360,075,t,fafafa:ca443f4786.jpg'),
          ),
        )
      ],),
      body: const Center(
         child: Text('AvatarScreen'),
      ),
    );
  }
}