import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kaffie_website/pages/homepage/speed/time_comparison.dart';
import 'package:kaffie_website/theme/size_config.dart';

class SpeedContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth > 1050){
          return DesktopSpeedContent();
        }
        else if(constraints.maxWidth > 580) {
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
      margin: EdgeInsets.only(top: 250),
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
      padding: EdgeInsets.all(SizeConfig.scaleW*2.5),
      decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      margin: EdgeInsets.only(top: SizeConfig.scaleH*5),
      child: Column(
        children: [
          Container(
            width: SizeConfig.scaleW * 70,
            child: Column(
              children: [
                Text("Brew more, in way less time.", style: Theme.of(context).textTheme.headline1.copyWith(fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(
                  "On average, Kaffie can brew your coffee faster than any other coffee-competitor on the market, due to it's fast-wakeup mechanism when paired with your Apple Watch."
                      "With Kaffie, gone are the days waiting for your coffee to brew, by the time you come back from your fridge to get your milk, it will already be done.",
                  style: Theme.of(context).textTheme.headline2,
                ),
                TimeComparison(),
              ],
            ),
          ),
          Container(
              width: SizeConfig.scaleW*30,
              margin: EdgeInsets.only( top: SizeConfig.scaleH*5),
              child: Image.asset("assets/coffee_just_machine.png")
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
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(SizeConfig.scaleW*5),

            child: Column(
              children: [
                Text("Brew more, in way less time.", style: Theme.of(context).accentTextTheme.headline1.copyWith(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                SizedBox(height: 10),
                Text(
                  "On average, Kaffie can brew your coffee faster than any other coffee-competitor on the market, due to it's fast-wakeup mechanism when paired with your Apple Watch."
                      "With Kaffie, gone are the days waiting for your coffee to brew, by the time you come back from your fridge to get your milk, it will already be done.",
                  style: Theme.of(context).accentTextTheme.headline2, textAlign: TextAlign.center,
                ),
                TimeComparison(isMobile: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
