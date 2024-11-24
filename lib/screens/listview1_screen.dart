import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Arch', 'Debian', 'Gentoo', 'NixOS'];

  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    String description = '';
    String imageURL = '';
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options.map(
            (e) {
              // Assign values to description and imageURL based on 'e'
              switch (e) {
                case 'Arch':
                  description = 'A versatile rolling-release distro.';
                  imageURL = 'assets/arch_logo.png';
                  break;
                case 'Debian':
                  description = 'A stable and well-known Linux distro.';
                  imageURL = 'assets/debian_logo.png';
                  break;
                case 'Gentoo':
                  description = 'A source-based distro for advanced users.';
                  imageURL = 'assets/gentoo_logo.png';
                  break;
                case 'NixOS':
                  description = 'A unique distro with declarative configuration.';
                  imageURL = 'assets/nixos_logo.png';
                  break;
                default:
                  description = 'Unknown Linux distribution';
                  imageURL = 'assets/default_logo.png';
              }

              return ListTile(
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                title: Text(e),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LinuxScreen(
                        title: e,
                        description: description,
                        imageURL: imageURL
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
