import 'package:flutter/material.dart';
import 'package:flutter_webapi_first_course/helpers/weekday.dart';
import 'package:flutter_webapi_first_course/models/journal.dart';

class AddJournalScreen extends StatelessWidget {
  final Journal journal;

  const AddJournalScreen({Key? key, required this.journal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${WeekDay(journal.createdAt.weekday).long.toLowerCase()}, ${journal.createdAt.day} | ${journal.createdAt.month} | ${journal.createdAt.year}"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.check)),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          keyboardType: TextInputType.multiline,
          style: TextStyle(fontSize: 24),
          expands: true,
          maxLines: null,
          minLines: null,
        ),
      ),
    );
  }
}