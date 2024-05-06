import 'package:flutter/material.dart';
import 'package:plant/card.dart';
import 'package:plant/drawer1.dart';
import 'package:plant/login.dart';
import 'package:plant/ready.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          clipBehavior: Clip.antiAlias,
          shape: const CircleBorder(eccentricity: 1),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Ready()),
            );
          },
          child: const Text("Ready page")),
      drawer: const Drawerr(),
      appBar: AppBar(
        // leading: Drawer(),
        backgroundColor: Color.fromARGB(115, 105, 150, 98),
        title: Text(widget.title),
      ),
      body: Container(
        color: Color.fromARGB(115, 114, 139, 110),
        height: MediaQuery.sizeOf(context).height,
        // padding: EdgeInsets.all(16.0),
        padding: EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildCard(),
              buildCard(),
              buildCard(),
              buildCard(),
              buildCard(),
              buildCard(),
              buildCard(),

              // style: ButtonStyle(
              //     fixedSize:
              //         MaterialStateProperty.all(Size.fromHeight(35))),

              ElevatedButton(
                  style: ButtonStyle(
                      fixedSize:
                          MaterialStateProperty.all(Size.fromHeight(35))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: const Text("login page"))
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Bottom_nav.botom_navbar_item(),
    );
  }
}
