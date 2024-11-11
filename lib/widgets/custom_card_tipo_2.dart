import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [
          Image(
              image: NetworkImage(
                  'https://images.pexels.com/photos/443446/pexels-photo-443446.jpeg?cs=srgb&dl=pexels-eberhardgross-443446.jpg&fm=jpg'))
        ],
      ),
    );
  }
}
