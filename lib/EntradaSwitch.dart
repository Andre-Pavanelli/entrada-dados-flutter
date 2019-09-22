import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  
  bool _escolhaUsuario = false;
  bool _escolhaConfig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            /*
            Switch(
              value: _escolhaUsuario,
              onChanged: (bool valor){
                setState(() {
                 _escolhaUsuario = valor; 
                });
              },
            ),
            Text("Receber notificações?")
            */

            SwitchListTile(
              title: Text("Receber notificações?"),
              value: _escolhaUsuario,
              onChanged: (bool valor){
                setState(() {
                 _escolhaUsuario = valor; 
                });
              },
            ),

            SwitchListTile(
              title: Text("Carregar imagens automaticamente?"),
              value: _escolhaConfig,
              onChanged: (bool valor){
                setState(() {
                 _escolhaConfig = valor; 
                });
              },
            ),

            RaisedButton(
              child: Text(
                "Salvar",
              style: TextStyle(
                fontSize: 20
              )
              ),
              onPressed: (){
                print("Resultado: notificações = " + _escolhaUsuario.toString()
                + ", carregar imagens: " + _escolhaConfig.toString());
              },
            )
          ],
        ),
      ),
    );
  }
}