import 'package:flutter/material.dart';


class AdminEmpleado extends StatelessWidget {
  const AdminEmpleado({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Administrar empleado')),
      body: Center(
        child: Text('Administrar empleado'),
     ),
   );
  }
}