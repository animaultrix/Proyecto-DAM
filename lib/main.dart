import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:proyecto_dam/screens/cuestionario.dart';
import 'package:proyecto_dam/screens/login.dart';
import 'package:proyecto_dam/screens/menu.dart';
import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
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
      initialRoute: 'login',
      routes: {
        'login':( _ ) => const Login(),
        'cuestionario': ( _ ) => const Cuestionario(),
        'menu': ( _ ) => const Menu(),
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
