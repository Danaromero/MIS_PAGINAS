 import 'package:flutter/material.dart';
import 'package:romero/route_generator.dart';

void main() => runApp(DanaApp());

class DanaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruteo',
      initialRoute: "/",
       home: PageOne(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }//Fin Widget
}//Fin Clase DanaApp

class PageOne extends StatelessWidget {
  String _params = "hola desde p1";
  final _scaffoldKey = GlobalKey<ScaffoldState>();
 
  PageOne({
    Key key,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key al a scaffold para acceder al scaffold desde otro widget hijo
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pagina 1 Dana Romero'),
         backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Container(
          child: MaterialButton(
            child: Text(
              "Siguiente",
               style: TextStyle(fontSize: 16.0, color: Colors.white)
            ),
            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
        elevation: 18.0,
        color: Colors.green,
        clipBehavior: Clip.antiAlias, 
          minWidth: 200.0,
          height: 35,
            onPressed: () {
              _openSecondPage(context);
            },
          ),
        ),
      ),//Fin Body Center
    );//Fin Scaffold
  }//Fin de Widget
 
  void _openSecondPage(BuildContext context) async {
    String _datoRetornadoDeSecondPage;
    // await para esperar que se regrese dato desde la pantalla que se abre
    await Navigator.of(context)
        .pushNamed(
      "/secondPage",
      arguments: _params,
    )
        .then(
      (response) {
        _datoRetornadoDeSecondPage = response;
      },
    );
 
    // acceso al scaffold para mostrar snackbar
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text(
          "Texto regresado: $_datoRetornadoDeSecondPage",
        ),
      ),
    );
  }//Fin _openSecondPage
}//Fin Clase PageOne
