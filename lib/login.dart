import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const NetworkImage(
                  "https://source.unsplash.com/random/800x600?house"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.red.shade300.withOpacity(0.8),
                Colors.black.withOpacity(0.6),
                Colors.blue.shade500.withOpacity(0.8)
              ]),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        errorText: 'email not found',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        errorText: 'Password didn\'t match',
                      ),
                      obscureText: true,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Forgot?'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5))))),
                  ),
                  Text('Or Login With'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.apple), onPressed: () {}),
                      IconButton(
                          icon: Icon(Icons.mail_outline), onPressed: () {}),
                      IconButton(icon: Icon(Icons.facebook), onPressed: () {}),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'New User? Register Here',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
