import 'dart:math';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<String> _unusedImages;
  late String _topImagePath;
  late String _bottomImagePath;

  @override
  void initState() {
    super.initState();
    _unusedImages = List.generate(10, (index) => 'assets/images/image${index + 1}.jpg');
    _topImagePath = _unusedImages.removeAt(Random().nextInt(_unusedImages.length));
    _bottomImagePath = _unusedImages.removeAt(Random().nextInt(_unusedImages.length));
  }

  void _onButtonPressed(String pressedImagePath) {
    setState(() {
      if (_unusedImages.isNotEmpty) {
        String newImagePath = _unusedImages.removeAt(Random().nextInt(_unusedImages.length));
        if (pressedImagePath == _topImagePath) {
          _bottomImagePath = newImagePath;
        } else {
          _topImagePath = newImagePath;
        }
      } else {
        Navigator.pushNamed(context, '/results', arguments: pressedImagePath);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double halfScreenHeight = MediaQuery.of(context).size.height / 2.0;

    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        children: [
          Expanded(
            child: InkWell(
              onTap: () => _onButtonPressed(_topImagePath),
              child: Container(
                height: halfScreenHeight,
                child: Image.asset(
                  _topImagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => _onButtonPressed(_bottomImagePath),
              child: Container(
                height: halfScreenHeight,
                child: Image.asset(
                  _bottomImagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
