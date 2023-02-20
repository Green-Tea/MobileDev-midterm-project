import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String imagePath =
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "The results are in!",
                style: GoogleFonts.comfortaa(
                    textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70)),
                textAlign: TextAlign.center,
              ),
              Container(
                margin: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow, width: 10),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text("Not satisfied? Try again",
                  style: GoogleFonts.comfortaa(
                    textStyle: const TextStyle(
                      color: Colors.white70,
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                      width: 150,
                      height: 42,
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
                              'Restart',
                              style: GoogleFonts.comfortaa(
                                textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                              )
                          )
                      ))),
              SizedBox(
                  width: 150,
                  height: 42,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        foregroundColor: Colors.blue,
                        backgroundColor: Colors.yellow,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: Text(
                        'Home',
                        style: GoogleFonts.comfortaa(
                          textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      )
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
