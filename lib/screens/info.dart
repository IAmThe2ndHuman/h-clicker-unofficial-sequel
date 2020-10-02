import 'package:flutter/material.dart';
import 'package:h_clicker_but_i_try_to_make_it/constants.dart';

class InfoPage extends StatelessWidget {

  final int hNumber;
  InfoPage({this.hNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Info"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(Icons.help_outline, size: 100, color: Colors.grey,),
          SizedBox(height: 10,),
          Text("This screen is not ready yet! Check back soon!", style: kScreenError, textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
