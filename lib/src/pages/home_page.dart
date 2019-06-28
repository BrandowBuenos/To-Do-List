import 'package:flutter/material.dart';

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
        preferredSize: Size.fromHeight(50),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blueGrey[200],
                Colors.blueGrey[300],
              ]
            )
          ),
          child: Center(
            child: Text("\n Lista de Tarefas", style: TextStyle(
              color: Colors.white, fontSize: 20,
            ),)
            
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.blueGrey[300],
                Colors.blueGrey[300],
              ]
            )
          ),
          child: Icon(Icons.add, size: 30,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 5,
        notchMargin: 3,
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: <Widget>[
              Icon(Icons.check_circle, size: 20, color: Colors.teal[300],),
              SizedBox(width: 10),
              Text("Sem tarefas pendentes", style: TextStyle(
                color: Colors.teal[300],
                fontSize: 15,
              ),)
            ],
          ),
        ),
      ),
    );
  }
}