import 'package:flutter/material.dart';

class OptionList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 15.0,
        ),
        buildTile(context, "Name", Icons.smartphone),
        buildTile(context, "Surname", Icons.history),
        buildTile(context, "Email", Icons.feedback),
        buildTile(context, "Password", Icons.supervisor_account),
        SizedBox(
          height: 15.0,
        ),
      ],
    );
  }

  Widget buildTile(BuildContext context, String title, IconData icon) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(title),
          trailing: Icon(Icons.edit),
        ),
        Divider(
          height: 6.0,
        ),
      ],
    );
  }
}