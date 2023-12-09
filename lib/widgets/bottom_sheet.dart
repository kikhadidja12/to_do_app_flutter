import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {

  String? newtache;
  final Function ajoutertache;
  BottomSheetWidget(this.ajoutertache);
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.indigo[100],
      child: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // padding:EdgeInsets.all(20.0),
          children: [
            Row(
              children: [
                Text(
                  'Ajouter une ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.indigo[200],
                  ),
                ),
                Text(
                  'To Do',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.amber),
                ),
                Text(
                  ' Tache!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.indigo[200]),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (val) {
                newtache = val;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                ajoutertache(newtache);
              },
              child: Text(
                'Ajouter',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.indigo[300]),
            )
          ],
        ),
      ),
    );
  }
}
