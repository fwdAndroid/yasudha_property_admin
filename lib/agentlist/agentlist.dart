import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:yasudha_property_admin/agentlist/sub_agents.dart';

class AgentList extends StatefulWidget {
  const AgentList({super.key});

  @override
  State<AgentList> createState() => _AgentListState();
}

class _AgentListState extends State<AgentList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text(
          "Agent List",
          style:
              TextStyle(color: Color(0xff234F68), fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return ListTile(
            leading: Image.asset("assets/logo.png"),
            trailing: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => SubAgents()));
                },
                child: Text(
                  "Sub Agents",
                  style: TextStyle(
                      color: Color(0xff234F68), fontWeight: FontWeight.bold),
                )),
            subtitle: Text("+923044636253"),
            title: Text("Gorvav"));
      }),
    );
  }
}
