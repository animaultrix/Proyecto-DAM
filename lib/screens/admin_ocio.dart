import 'package:flutter/material.dart';


class AdminOcio extends StatelessWidget {
  const AdminOcio({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Administrar ocio')),
      body: Center(
        child: Text('Administrar ocio'),
     ),
   );
  }
}