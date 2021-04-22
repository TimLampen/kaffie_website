import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kaffie_website/pages/homepage/section2/time_comparison.dart';

class S3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 800,
            padding: EdgeInsets.only(top: 100, left: 50, bottom: 100, right: 50),
            child: Image.asset("assets/brew_bg.png")
          ),
          Container(
            padding: EdgeInsets.only(top: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30)
            ),
            width: 600,
            child: Column(
              children: [
                Text("From tucked away to center stage.", style: Theme.of(context).textTheme.headline1.copyWith(fontWeight: FontWeight.bold)),
                Text("With Kaffie, you don't have to hide your coffee machine in a corner. With its aesthetically pleasing design, rounded corners, "
                    "and silent operation, Kaffie can be the centerpiece of any kitchen.", style: Theme.of(context).textTheme.headline2),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
