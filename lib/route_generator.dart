import 'package:romero/main.dart';
import 'package:romero/second_page.dart';
import 'package:flutter/material.dart';
 
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
 
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => PageOne(),
        );
      case "/secondPage":
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondPage(
              texto: args,
            ),
          );
        } else
          return _errorPage();
        break;
      default:
        return _errorPage();
    }//Fin de Switch
  }//Fin Lista Route tipo dinamico
 
  static Route<dynamic> _errorPage() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text("ERROR"),
        ),
        body: Center(
          child: Text("Error page"),
        ),
      ),
    );
  }//Fin Dinamica
}//Fin Clase RouteGenerator