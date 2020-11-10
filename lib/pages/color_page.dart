import 'package:flutter/material.dart';
import 'package:random_color_app/utils/color_util.dart';

class ColorPage extends StatefulWidget {
  ColorPage({Key key}) : super(key: key);

  @override
  _ColorPageState createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  Color _color;

  @override
  void initState() {
    super.initState();
    _color = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: InkWell(
                onTap: () {
                  setState(() {
                    _color = ColorUtil.getRandomColor();
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Hey there', style: TextStyle(fontSize: 26)),
                  color: _color,
                ))));
  }
}
