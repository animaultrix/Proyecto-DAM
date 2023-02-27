import 'package:flutter/material.dart';
import 'package:proyecto_dam/firestore/firestore_fecha.dart';

import 'package:proyecto_dam/generated/l10n.dart';
import 'package:proyecto_dam/http/consulta_fecha.dart';
import 'package:proyecto_dam/screens/cuestionario.dart';

class Login extends StatelessWidget{
  final code = TextEditingController();
  String documentoId='';
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold( 
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(       
           child: Column( 
              children: <Widget>[
                

                const Cabecera(),
                //Expanded(child: Container(color: Colors.red)),
                Container(height: MediaQuery.of(context).size.height * 0.1,),
                /*.................

                CodigoCodigoUsuarioioio

                ''''''''''''''''''*/
                Container(
                  margin: const EdgeInsets.only(top: 50, left: 50, right: 50),
                  child:  TextField(
                    controller: code,      
                    style: const TextStyle(
                      fontFamily: 'MulishM',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: S.current.codigoUsuario,
                    ),
                  ),
                ),
                /*.................

                Botonn

                ''''''''''''''''''*/
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 50, left: 50, right: 50),                
                  child: ElevatedButton(
                    style:  ElevatedButton.styleFrom(   
                      padding: const EdgeInsets.symmetric(horizontal: 50),            
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontFamily: "MulishM",
                        ),
                        foregroundColor: const Color(0xffffffff),
                        backgroundColor: const Color(0xffac862e),
                                          
                    ),                 
                    child:  Text(S.current.entrar),
                    onPressed: () async {
                      documentoId = code.text;
                      DateTime fechaCliente = await getFecha(documentoId);
                      DateTime fechaCanarias = await getCurrentTimeInCanarias();
                      print('text field='+documentoId+' fechaClientes es '+ fechaCliente.toString()+'fechaCanarias es '+fechaCanarias.toString());
                      /*.................
                
                      Consulta a Firestore con firestore/firestore_fecha.dart
                      
                      ''''''''''''''''''*/
                      FutureBuilder<DateTime>(
                        future: getFecha(documentoId),
                        builder: (context, snapshot) {
                          fechaCliente = snapshot.data!;
                          if (snapshot.hasData) {
                            return const CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            return const Text('Cargando fecha...');
                          }
                        }
                      );
                      /*.................
                      
                      Consulta http fecha actual Canarias
                      
                      ''''''''''''''''''*/
                      FutureBuilder <DateTime>(
                        future: getCurrentTimeInCanarias(),
                        builder: (context, snapshot) {
                          DateTime fechaCanarias = snapshot.data!;
                          if (snapshot.hasData) {
                            return const CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            return const Text('Cargando fecha...');
                          }
                        }
                      );
                      /*.................
                      
                      Comparar fecha actual con la del cliente
                      
                      ''''''''''''''''''*/
                      if (fechaCanarias.isBefore(fechaCliente) ) {
                        Navigator.pushNamed(context, '/cuestionario');
                      } else {
                        
                      }
                    }
                  )
                ),
              ],
            ),
        ),
      ),
    );
  }
}
/*.................

Cabecera

''''''''''''''''''*/
class Cabecera  extends StatelessWidget {
  const Cabecera ({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50, left: 50, right: 50),
      child: const Image(image: AssetImage('assets/CanariasLuxury.png')),
    );
  }
}


  