import 'package:flutter/material.dart';
import 'package:todo_list/src/widget/card_tarefa.dart';

import 'add_tarefa.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.blueGrey[200],
              Colors.blueGrey[300],
            ])),
            child: Center(
                child: Text(
              "\n Lista de Tarefas",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
            ))),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: CardTarefa(
              title: "Fazer café",
              description: "tenho que fazer café",
              color: Colors.teal[200],
              onActionFinalized: () {},
              onActionDelete: () {},
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddTarefa(),
              ));
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
            Icons.add,
            size: 30,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.check_circle,
                size: 20,
                color: Colors.teal[300],
              ),
              SizedBox(width: 10),
              Text(
                "Sem tarefas pendentes",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.teal[300],
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
