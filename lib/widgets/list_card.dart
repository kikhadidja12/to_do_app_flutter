import 'package:flutter/material.dart';
class ListCard extends StatelessWidget {
  final bool isChecked;
  final String titletache;
  final Function (bool?) checkboxchange;
  ListCard( this.isChecked,this.titletache,this.checkboxchange);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Text(
          titletache,
          style: TextStyle(
              fontSize: 19,
              // fontFamily:
              color: Colors.black,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.indigo[200],
          value: isChecked,
          onChanged: checkboxchange,
        ),
        // leading: CircleAvatar(
        //   backgroundColor:Colors.indigoAccent[100] ,
        //   radius: 5.0,
        // ),
      ),
      color: Colors.amber[50],
      elevation: 5.0,
    );
  }
}