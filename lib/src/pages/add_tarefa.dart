import 'package:flutter/material.dart';

class AddTarefa extends StatefulWidget {
  @override
  _AddTarefaState createState() => _AddTarefaState();
}

class _AddTarefaState extends State<AddTarefa> {
  TextEditingController controllerTitle = TextEditingController();
  TextEditingController controllerDescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[200],
        title: Text("Adicionar nova tarefa",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 20,
            )),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: controllerTitle,
                decoration: InputDecoration(
                  labelText: "Título da tarefa",
                ),
              ),
              TextFormField(
                controller: controllerDescription,
                decoration: InputDecoration(
                  labelText: "Descrição da tarefa",
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(
              "Título: ${controllerTitle.text}\nDescrição: ${controllerDescription.text}");
        },
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
                Colors.blueGrey[300],
                Colors.blueGrey[300],
              ])),
          child: Icon(
            Icons.check,
            size: 20,
          ),
        ),
      ),
    );
  }
}
