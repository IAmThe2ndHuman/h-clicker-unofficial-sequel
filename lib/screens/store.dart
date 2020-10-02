import 'package:flutter/material.dart';
import 'package:h_clicker_but_i_try_to_make_it/constants.dart';

class StorePage extends StatelessWidget {

  final int hNumber;
  StorePage({this.hNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Store"),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(child: Row(
              children: [
                Text("Current balance: "),
                Text(hNumber.toString(), style: kHBalance,)
              ],
            )),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(999),
              color: kHCommonAccentColor,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(Icons.error_outline, size: 100, color: Colors.grey,),
          SizedBox(height: 10,),
          Text("The store is currently empty. Check back soon!", style: kScreenError, textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
