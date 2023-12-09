import 'package:flutter/material.dart';
import 'package:todoapp/widgets/list_card.dart';
import 'package:todoapp/models/Tache.dart';

class ListWidget extends StatefulWidget {
  final List<Tache> taches;
  ListWidget(this.taches);
  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.taches.length,
      itemBuilder: (context, index) {
        return ListCard(widget.taches[index].isdone, widget.taches[index].name, (bool? val) {
          setState(() {
            widget.taches[index].Changement();
          });
        });
      },
      // children: [
      //   ListCard(taches[0].isdone,taches[0].name),
      //   ListCard(taches[1].isdone,taches[1].name),
      //   ListCard(taches[2].isdone,taches[2].name),
      // ],
    );
  }
}
