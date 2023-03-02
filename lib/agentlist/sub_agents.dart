import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SubAgents extends StatefulWidget {
  const SubAgents({super.key});

  @override
  State<SubAgents> createState() => _SubAgentsState();
}

class _SubAgentsState extends State<SubAgents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text(
          "Sub Agent List",
          style:
              TextStyle(color: Color(0xff234F68), fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return ListTile(
            leading: Image.asset("assets/logo.png"),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            subtitle: Text("+923044636253"),
            title: Text("Gorvav"));
      }),
    );
  }
}
