import 'package:fl_components/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de Flutter'),
          //backgroundColor: Colors.blueAccent,
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                leading: Icon(AppRoutes.MenuOptions[index].icon),
                title: Text(AppRoutes.MenuOptions[index].name),
                onTap: () {
                  Navigator.pushNamed(
                      context, AppRoutes.MenuOptions[index].route);
                }),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: AppRoutes.MenuOptions.length));
  }
}
