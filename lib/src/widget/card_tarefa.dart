import 'package:flutter/material.dart';

class CardTarefa extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final VoidCallback onActionFinalized;
  final VoidCallback onActionDelete;

  CardTarefa(
      {@required this.title,
      @required this.description,
      @required this.color,
      @required this.onActionFinalized,
      @required this.onActionDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      //color: Colors.teal,
      child: Row(
        children: <Widget>[
          Container(
            height: 40,
            width: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: this.color,
              //Colors.teal[200],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(this.title,
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 15)),
                Text(this.description,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 14,
                    )),
              ],
            ),
          ),
          IconButton(
            onPressed: this.onActionFinalized,
            icon: Icon(Icons.check, color: Colors.teal[300], size: 30),
          ),
          IconButton(
            onPressed: this.onActionDelete,
            icon: Icon(Icons.delete, color: Colors.red[300], size: 30),
          )
        ],
      ),
    );
  }
}
