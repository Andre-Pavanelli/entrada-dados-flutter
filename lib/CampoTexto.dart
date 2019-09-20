import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite um valor",
                //enabled: false, //desabilita o campo
              ),
              //enable: false
              //maxLength: 2,
              //maxLengthEnforced: false,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green
              ),
              //obscureText: true, //para senhas
              /*
              //Captura quando modificado
              onChanged: (String texto){
                print("Valor digitado: " + texto);
              },*/
              onSubmitted: (String e){
                //print("Valor Digitado: " + e);
              },
              controller: _textEditingController,
            ),
          ),
          RaisedButton(
            child: Text("Salvar"),
            color: Colors.lightBlue,
            onPressed: (){
              print("Valor Digitado: " + _textEditingController.text);
            },
          )
        ],
      ),
    );
  }
}