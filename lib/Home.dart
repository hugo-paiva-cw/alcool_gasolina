import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Álcool ou gasolina",
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Padding(padding: EdgeInsets.only(top: 25)),
              Text(
                "Saiba qual a melhor opção para abastecer o seu carro!",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Preço do Álcool"
                    ),
                    style: TextStyle(
                        fontSize: 20
                    ),
                    controller: _controllerAlcool,
                  )
              ),
              Padding(padding: EdgeInsets.only(top: 25)),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Preço da gasolina"
                ),
                style: TextStyle(
                    fontSize: 20
                ),
                controller: _controllerGasolina,
              ),
              Padding(padding: EdgeInsets.only(top: 25)),
              RaisedButton(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Calcular",
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
                onPressed: () {},
                color: Colors.blue,
                textColor: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Resultado",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              )

            ],
          ),
        )
      ),
    );
  }
}
