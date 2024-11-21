import 'package:fl_components/routes/app_routes.dart';
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Arch', 'Debian', 'Gentoo', 'NixOS'];

  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 1'),
        ),
        body: ListView(
          children: [
            ...options.map(
              (e) => ListTile(
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                title: Text(e),
                onTap: (){
                  Navigator.pushNamed(context, AppRoutes.LinuxOptions[options.indexOf(e)].route);
                },
              ),
            )
          ],
        ));
  }
}
