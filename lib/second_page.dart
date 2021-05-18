import 'package:flutter/material.dart';
 
class SecondPage extends StatelessWidget {
  final String texto;
  TextEditingController _textController = TextEditingController();
 
  SecondPage({Key key, this.texto}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pantalla 2 Dana Romero"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(40.0),
              child: TextField(
                controller: _textController,
                maxLength: 30,
                decoration: InputDecoration(
                  labelText: "Ingrese palabra",
                  hintText: "Palabra",
                ),
              ),
            ),
            MaterialButton(
              child: Text(
              "Regresar",
               style: TextStyle(fontSize: 16.0, color: Colors.white)
            ),

              minWidth: 200.0,
             height: 35,
             color: Colors.green,
              onPressed: () {
                Navigator.of(context).pop(_textController.text);
              },
            ),//Fin Material Button
          ],//Fin Widget[]
        ),//Fin Columna
      ),//Fin Body Center
    );//Fin Scaffold
  }//Fin Widget
}//Fin Clase Segunda Pagina 