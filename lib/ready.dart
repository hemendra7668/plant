import 'package:flutter/material.dart';

class Ready extends StatelessWidget {
  const Ready({super.key});
  @override
  Widget build(BuildContext context) {
    const String bg = "https://wallpapercave.com/wp/wp2411857.jpg";
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/moun.jpg"),
              fit: BoxFit.cover,
              alignment: Alignment.bottomRight,
              scale: 2,
            ),
          ),
          child: Container(
            height: height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.green.shade900],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Smile',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 64.0,
                            fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Define the button's action here
                        },
                        style: ElevatedButton.styleFrom(
                          //     Size(-64, 48), // Set the button's minimum size
                          padding:
                              EdgeInsets.all(12), // Set the button's padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                32.0), // Define the button's shape
                          ),
                        ),
                        child: Text(
                          'Login with Facebook',
                          style: TextStyle(fontSize: 16), // Set the text style
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
