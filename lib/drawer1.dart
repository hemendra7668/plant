import 'dart:developer';

import 'package:flutter/material.dart';

class Drawerr extends StatelessWidget {
  const Drawerr({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1.20,
      width: 250,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          CircleAvatar(
              backgroundColor: Color.fromARGB(255, 158, 148, 231),
              radius: 50.0),
          Container(
            height: MediaQuery.sizeOf(context).height - 200,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  enabled: true,
                  onTap: () {
                    log("pressed");
                  },
                  title: Text("profile $index"),
                  leading: Icon(Icons.person),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
