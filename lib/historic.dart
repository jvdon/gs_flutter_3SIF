import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gs_flutter/database/db.dart';
import 'package:gs_flutter/history.dart';

class Historic extends StatefulWidget {
  const Historic({super.key});

  @override
  State<Historic> createState() => _HistoricState();
}

class _HistoricState extends State<Historic> {
  @override
  Widget build(BuildContext context) {
    List<History> historic = Database.historic;

    return ListView.builder(
      itemCount: historic.length,
      itemBuilder: (context, index) {
        History item = historic[index];
        return ListTile(
          contentPadding: const EdgeInsets.all(5),
          title: Text(item.title),
          subtitle: Text(item.desc),
          leading: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${item.dateTime!.day.toString()}/${item.dateTime!.month.toString()}",
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        );
      },
    );
  }
}
