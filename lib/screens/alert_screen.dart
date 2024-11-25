import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialog(BuildContext context) {
    showDialog(
        barrierDismissible: true, // Cuando está en false, no deja salir del diálogo clicando en el sombreado.
        context: context,
        builder: (context) {
          return AlertDialog(
              title: const Text('Alerta'),
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(0)),
              content: const Column(
                mainAxisSize: MainAxisSize.min, // Si no se especifica, por defecto viene al máximo.
                children: [
                  Text('Este es el contenido del mensaje de alerta'),
                  SizedBox(height: 10,),
                  FlutterLogo(size: 100,)
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cerrar')
                  ),
              ],
            );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed: () => displayDialog(context),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Mostrar alerta",
                  style: TextStyle(fontSize: 20),
                ),
              )),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context)));
  }
}
