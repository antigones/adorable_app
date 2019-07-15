import 'dart:math';

import 'package:flutter/material.dart';

class AvatarWidget extends StatefulWidget {
  @override
  _AvatarWidgetState createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {

  String _imgUrl = 'https://api.adorable.io/avatars/1/';

// ···

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: Image.network(
            _imgUrl,
          )
        ),

     FloatingActionButton(
    onPressed: _updateImg,
    tooltip: 'Update',
    child: Icon(Icons.update),
    ), // This trailing comma makes auto-formatting nicer for build methods.
      ],
    );
  }


  String _updateImg() {
    setState(() {
      int n = new Random().nextInt(100);
      _imgUrl = 'https://api.adorable.io/avatars/'+n.toString()+'/';
    });
  }


}