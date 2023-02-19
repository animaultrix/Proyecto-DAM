import 'package:flutter/material.dart';

//importaciones de los screens
import 'package:proyecto_dam/screens/screens.dart';
//importacion de multilenguaje
import 'generated/l10n.dart';
//importacion de firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
Future<void> main() async {
  //inicializar app
  runApp(const MyApp());
  //inicializar firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );    
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {    
    return  MaterialApp(
      
      debugShowCheckedModeBanner: false,
      //home: Login(),
      //home: Menu(),
      //home: Cuestionario(),
      initialRoute: '/login',
      routes: {
        '/login'       : ( BuildContext context ) => const Login(),
        '/cuestionario': ( BuildContext context ) => const Cuestionario(),
        '/menu'        : ( BuildContext context ) => const Menu(),
        '/store'       : ( BuildContext context ) => const Store()
      },
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
