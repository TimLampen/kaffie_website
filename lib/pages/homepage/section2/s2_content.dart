import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kaffie_website/pages/homepage/section2/time_comparison.dart';

class S2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 50, left: 100),
      color: Theme.of(context).primaryColorDark,
      child: Row(
        children: [
          Container(
            width: 750,
            child: Column(
              children: [
                Text("Brew more, in way less time.", style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                Text(
                  "On average, Kaffie can brew your coffee faster than any other coffee-competitor on the market, due to it's fast-wakeup mechanism when paired with your Apple Watch."
                      "With Kaffie, gone are the days waiting for your coffee to brew, by the time you come back from your fridge to get your milk, it will already be done.",
                  style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white),
                ),
                TimeComparison(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 100),
            child: Image.asset("assets/coffee_just_machine.png")),
        ],
      ),
    );
  }

}
