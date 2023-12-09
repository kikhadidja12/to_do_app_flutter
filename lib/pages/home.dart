import 'package:flutter/material.dart';
import 'package:todoapp/list.dart';
import 'package:todoapp/models/Tache.dart';
import 'package:todoapp/widgets/bottom_sheet.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  List<Tache> taches = [
    Tache('Salat', false),
    Tache('Work At Project', false),
    Tache('Deshes', false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => SingleChildScrollView(
                      child: Container(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: BottomSheetWidget((newtache) {
                            setState(() {
                              taches.add(Tache(newtache,false));
                              Navigator.pop(context);
                            });
                          })),
                    ));
          },
          backgroundColor: Colors.amber,
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.indigoAccent[100],
        body: Container(
          padding: EdgeInsets.only(top: 50.0, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.playlist_add_check,
                    size: 40,
                    color: Colors.indigoAccent[600],
                  ),
                  SizedBox(width: 5),
                  Text(
                    'To Do!',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Nombre de Taches : ${taches.length}',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: ListWidget(taches),
                ),
              )
            ],
          ),
        ));
  }
}
