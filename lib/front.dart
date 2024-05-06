import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:plant/homescr.dart';

class Front extends StatelessWidget {
  const Front({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 159, 139, 82),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MyHomePage(
                        title: "home page",
                      )),
            );
          },
          child: Icon(Icons.arrow_forward_rounded)),
      body: CarouselSlider(
        options: CarouselOptions(
          enlargeFactor: 1.2,
          viewportFraction: 1.0,
          autoPlay: true,
          height: MediaQuery.sizeOf(context).height,
        ),
        items: [
          Container(
            // height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black12, Colors.white10],
                    begin: Alignment.bottomCenter),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1683610960458-2ea0a7877cee?w=420&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8OTMzNTE5N3x8ZW58MHx8fHx8"),
                )),
            // child: Container(
            child: Container(
              padding: EdgeInsets.only(bottom: 40),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Text("Explore the beauty of the World!!",
                    style: TextStyle(
                        color: Color.fromARGB(255, 236, 232, 226),
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            // ),
          ),
          Container(
            // height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.pexels.com/photos/19725485/pexels-photo-19725485/free-photo-of-road-in-seaside.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            )),
            // child: Container(
            child: Container(
              padding: EdgeInsets.only(bottom: 40),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Text("Let\t's make  your dream true!",
                    style: TextStyle(
                        color: Color.fromARGB(255, 236, 232, 226),
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            // ),
          ),
          Container(
            // height: MediaQuery.sizeOf(context).height,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaQtRygWCkQ43tLsCx2XyXUZwJCgkJ7lVXaGU26SCWW6VHsonrYDs4q-xfJfC5IHI89iA&usqp=CAU"),
            )),
            // child: Container(
            child: Container(
              padding: EdgeInsets.only(bottom: 60),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Text("Explore your travel expirience",
                    style: TextStyle(
                        color: Color.fromARGB(255, 236, 232, 226),
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            // ),
          ),
        ],
      ),
    );
  }
}
