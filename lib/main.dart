import 'package:flutter/material.dart';

//importacion de las rutas
import 'package:proyecto_dam/router/app_routes.dart';
//importaciones de los screens
import 'package:proyecto_dam/screens/screens.dart';
import 'package:proyecto_dam/theme/app_theme.dart';
//importacion de multilenguaje
import 'generated/l10n.dart';
//importacion de firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
Future<void> main() async {
  // Inicializa el enlace de servicios de Flutter
  WidgetsFlutterBinding.ensureInitialized();
  //inicializar firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); //inicializar app
  runApp(const MyApp());   
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {    
    return  MaterialApp(
      
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      //onGenerateRoute:(settings) => AppRoutes.onGenerateRoute(settings),
      //se puede simplificar por que settings es el unico argumento que enviamos
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,
      //Flutter IntL Internacionalización
      localizationsDelegates: const [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],  
    );    
  }
}
