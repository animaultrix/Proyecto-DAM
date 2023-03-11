import 'package:flutter/material.dart';

import 'package:proyecto_dam/models/models.dart';
import 'package:proyecto_dam/screens/admin_viviendas.dart';
import '../screens/screens.dart';


class AppRoutes {

  static const initialRoute = '/admin_menu';

  static  Map<String, Widget Function(BuildContext)> routes = {
    '/login'                  : ( BuildContext context ) => Login(),
    '/cuestionario'           : ( BuildContext context ) => const Cuestionario(),
    '/menu'                   : ( BuildContext context ) => const Menu(),
    '/store'                  : ( BuildContext context ) => const Store(),
    '/admin_menu'             : ( BuildContext context ) => const AdminMenu(),
    '/admin_crear_estancia'   : ( BuildContext context ) => const CrearEstancia(),        
    '/admin_tienda'           : ( BuildContext context ) => const AdminTienda(),
    '/admin_ocio'             : ( BuildContext context ) => const AdminOcio(),
    '/admin_empleado'         : ( BuildContext context ) => const AdminEmpleado(),
    '/admin_viviendas'        : ( BuildContext context ) => const AdministrarViviendas(),
  };
  static Route<dynamic> onGenerateRoute (settings){
    print(settings);
    return MaterialPageRoute(
    builder: (context) => const AlertScreen()
  );
  }
  static final MenuOptionsAmin = <MenuOptionAmin>[
    MenuOptionAmin(route: '/admin_crear_estancia', name: 'Crear estancia', screen: const CrearEstancia()),
    MenuOptionAmin(route: '/admin_tienda', name: 'Administrar tienda', screen: const AdminTienda()),
    MenuOptionAmin(route: '/admin_ocio', name: 'Administrar Ocio', screen: const AdminOcio()),
    MenuOptionAmin(route: '/admin_empleado', name: 'Administrar empleado', screen: const AdminEmpleado()),
    MenuOptionAmin(route: '/admin_viviendas', name: 'Administrar viviendas', screen: const AdministrarViviendas()),
  ];
}