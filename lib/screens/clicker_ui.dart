import 'package:flutter/material.dart';
import 'package:h_clicker_but_i_try_to_make_it/constants.dart';
import '../components/clickable_icon.dart';
import '../screens/info.dart';
import '../screens/store.dart';


class ClickerUI extends StatefulWidget {
  @override
  _ClickerUIState createState() => _ClickerUIState();
}

class _ClickerUIState extends State<ClickerUI> {

  int hCount = 0;
  TextStyle hStyle = kHStyle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("H Clicker: The Sequel"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("H Count:", style: kHCount,),
              SizedBox(width: 5,),
              Text(hCount.toString(), style: kHCountNumber,)
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                hCount++;
              });
            },
            onTapDown: (_) {
              setState(() {
                hStyle = TextStyle(color: Colors.blue[900], fontSize: 200);
              });
            },
            onTapUp: (_) {
              setState(() {
                hStyle = kHStyle;
              });
            },
            onTapCancel: () {
              setState(() {
                hStyle = kHStyle;
              });
            },
            child: Center(child: Text("H", style: hStyle,)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClickableIcon(
                icon: Icons.info,
                size: 70,
                color: kHCommonAccentColor,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InfoPage(
                        hNumber: hCount,
                      ),
                    ),
                  );
                },
              ),
              ClickableIcon(
                icon: Icons.store,
                size: 70,
                color: kHCommonAccentColor,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StorePage(
                        hNumber: hCount,
                      ),
                    ),
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

