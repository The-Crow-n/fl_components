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
                  description =
                      'Arch Linux es una distribución de Linux conocida por su enfoque minimalista, flexible y de "roling release" (actualización continua). A diferencia de otras distribuciones populares, Arch se basa en la filosofía de mantener el sistema lo más sencillo posible y ofrecer a los usuarios control total sobre su configuración.';
                  imageURL =
                      'https://live.mrf.io/statics/i/ps/www.muylinux.com/wp-content/uploads/2011/01/archlinux.png?width=1200&enable=upscale';
                  break;
                case 'Debian':
                  description = 'A stable and well-known Linux distro.';
                  imageURL = 'https://cdn.worldvectorlogo.com/logos/debian.svg';
                  break;
                case 'Gentoo':
                  description = 'A source-based distro for advanced users.';
                  imageURL =
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Gentoo_Linux_logo_matte.svg/458px-Gentoo_Linux_logo_matte.svg.png';
                  break;
                case 'NixOS':
                  description =
                      'A unique distro with declarative configuration.';
                  imageURL =
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/NixOS_logo.svg/1280px-NixOS_logo.svg.png';
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
                          imageURL: imageURL),
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
