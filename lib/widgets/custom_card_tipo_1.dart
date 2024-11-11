import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: const Text('Titulo de la tarjeta'),
            subtitle: const Text(
                'Incididunt irure aute consectetur nostrud sunt culpa est esse sint labore in commodo. Velit officia voluptate nulla nulla commodo aliquip consectetur do eu exercitation cillum ut est veniam. Ex culpa labore laborum reprehenderit aliqua officia laborum in sunt ipsum excepteur est.'),
          )
        ],
      ),
    );
  }
}
