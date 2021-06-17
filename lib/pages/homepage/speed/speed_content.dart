import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kaffie_website/pages/homepage/speed/time_comparison.dart';
import 'package:kaffie_website/theme/size_config.dart';

class SpeedContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth > 1150){
          return DesktopSpeedContent();
        }
        else if(constraints.maxWidth > 600) {
          return LaptopSpeedContent();
        }
        else{
          return MobileSpeedContent();
        }
      });
  }
}

class DesktopSpeedContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 150),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 825,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Brew more, in way less time.", style: Theme.of(context).textTheme.headline1),
                      SizedBox(height: 10),
                      Text(
                        "On average, Kaffie can brew your coffee faster than any other coffee-competitor on the market, due to it's fast-wakeup mechanism when paired with your Apple Watch."
                            "With Kaffie, gone are the days waiting for your coffee to brew, by the time you come back from your fridge to get your milk, it will already be done.",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Container(
                        width: 650,
                        child: TimeComparison()
                      ),
                    ],
                  ),
                ),
                Container(width: 275)

              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 750,
              ),
              Container(
                  width: 375,
                  child: Image.asset("assets/coffee_just_machine.png")
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LaptopSpeedContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Brew more, in way less time.", style: Theme.of(context).textTheme.headline1, textAlign: TextAlign.center),
                      SizedBox(height: 10),
                      Text(
                        "On average, Kaffie can brew your coffee faster than any other coffee-competitor on the market, due to it's fast-wakeup mechanism when paired with your Apple Watch."
                            "With Kaffie, gone are the days waiting for your coffee to brew, by the time you come back from your fridge to get your milk, it will already be done.",
                        style: Theme.of(context).textTheme.headline2,
                        textAlign: TextAlign.center
                        ,
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 75),
                        child: TimeComparison()
                      ),
                    ],
                  ),
                ),
                Container(
                    width: 375,
                    child: Image.asset("assets/coffee_just_machine.png")
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileSpeedContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 225,
            child: Column(
              children: [
                Text("Brew more, in way less time.", style: Theme.of(context).accentTextTheme.headline1),
                SizedBox(height: 10),
                Text(
                  "On average, Kaffie can brew your coffee faster than any other coffee-competitor on the market, due to it's fast-wakeup mechanism when paired with your Apple Watch."
                      "With Kaffie, gone are the days waiting for your coffee to brew, by the time you come back from your fridge to get your milk, it will already be done.",
                  style: Theme.of(context).accentTextTheme.headline2,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(bottom: 25, top: 10),
                  child: TimeComparison(isMobile: true)
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            child: Image.asset("assets/coffee_just_machine_half.png", width: 100)
          ),
        ],
      ),
    );
  }
}
