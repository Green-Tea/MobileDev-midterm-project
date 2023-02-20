import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200,
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Image.asset('assets/icon/icon.png'),
              ),
              Text("Welcome to Dinner Hero",
                  style: GoogleFonts.comfortaa(
                      textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70)),
                textAlign: TextAlign.center,
              ),
              Text(
                "Compare foods together to find what you really want to eat!",
                style: GoogleFonts.comfortaa(
                  textStyle: const TextStyle(
                    color: Colors.white70
                  )),
                textAlign: TextAlign.center,
              ),
              Padding(
                  padding: const EdgeInsets.all(80),
                  child: SizedBox(
                      width: 150,
                      height: 50,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            foregroundColor: Colors.blue,
                            backgroundColor: Colors.yellow,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/main');
                          },
                          child: Text(
                            'Start',
                            style: GoogleFonts.comfortaa(
                              textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          )))),

            ],
          ),
        ),
      ),
    );
  }
}
