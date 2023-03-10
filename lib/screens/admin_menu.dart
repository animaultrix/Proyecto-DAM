import 'package:flutter/material.dart';

import 'package:proyecto_dam/router/app_routes.dart';
import 'package:proyecto_dam/screens/screens.dart';


class AdminMenu extends StatelessWidget {
  const AdminMenu({super.key});
  final options = const['Crear estancia', 'Cdministrar tienda', 'Administrar ocio', 'Empleado'];
  
  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.MenuOptionsAmin;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Administrador'),
          elevation: 0,
          foregroundColor: const Color(0xffffffff),
          backgroundColor: const Color(0xffac862e), 
         
        ),
        body: ListView.separated(
          itemCount: menuOption.length,
          itemBuilder: (context, i) => ListTile(
                title: Text(menuOption[i].name),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),                
                onTap: () {
                  //final route = MaterialPageRoute(
                  //  builder: ((context) => menuOption[i].screen)
                  //);                  
                  Navigator.pushNamed(context, '/admin_crear_estancia');
                  //Navigator.push(context, route);
                },
              ),
          //_ para cuando no vaya usar argumento y __ para cuando tampoco vaya a usar el segundo argumento
          
          separatorBuilder: (_, __) => const Divider(),
               
          /*children: [
            //los 3 puntos es el operador spread para extraer elementos de la lista
            ...options.map(
              (e) => ListTile(
                title: Text(e),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),                
              )
            ).toList()//tolist para pasarlo a una lista                 
          ],*/
        ),
      ),
    );
  }
}