import 'package:flutter/material.dart';


class CrearEstancia extends StatelessWidget {
  const CrearEstancia({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Administrador'),
          elevation: 0,
          foregroundColor: const Color(0xffffffff),
          backgroundColor: const Color(0xffac862e), 
         
      ),
      body: Center(
        child: Text('Crear estancia'),
     ),
   );
  }
}