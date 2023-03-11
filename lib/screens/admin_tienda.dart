import 'package:flutter/material.dart';


class AdminTienda extends StatelessWidget {
  const AdminTienda({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Administrar tienda')),
      body: Center(
        child: Text('administrar tienda'),
     ),
   );
  }
}