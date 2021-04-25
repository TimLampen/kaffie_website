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
        else if(constraints.maxWidth > 500) {
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
      padding: EdgeInsets.only(left: SizeConfig.scaleW*10, right: SizeConfig.scaleW*10),
      child: Row(
        children: [
          Container(
            width: SizeConfig.scaleW * 45,
            child: Column(
              children: [
                Text("Brew more, in way less time.", style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
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
              width: SizeConfig.scaleW*30,
              margin: EdgeInsets.only(left: SizeConfig.scaleW*5, top: SizeConfig.scaleH*5),
              child: Image.asset("assets/coffee_just_machine.png")
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
      padding: EdgeInsets.only(left: SizeConfig.scaleW*10, right: SizeConfig.scaleW*10),
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Text("Brew more, in way less time.", style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                SizedBox(height: 10),
                Text(
                  "On average, Kaffie can brew your coffee faster than any other coffee-competitor on the market, due to it's fast-wakeup mechanism when paired with your Apple Watch."
                      "With Kaffie, gone are the days waiting for your coffee to brew, by the time you come back from your fridge to get your milk, it will already be done.",
                  style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white), textAlign: TextAlign.center,
                ),
                TimeComparison(),
              ],
            ),
          ),
          Container(
              width: SizeConfig.scaleW*60,
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
      padding: EdgeInsets.only(left: SizeConfig.scaleW*5, right: SizeConfig.scaleW*5),
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Text("Brew more, in way less time.", style: Theme.of(context).accentTextTheme.headline1.copyWith(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                SizedBox(height: 10),
                Text(
                  "On average, Kaffie can brew your coffee faster than any other coffee-competitor on the market, due to it's fast-wakeup mechanism when paired with your Apple Watch."
                      "With Kaffie, gone are the days waiting for your coffee to brew, by the time you come back from your fridge to get your milk, it will already be done.",
                  style: Theme.of(context).accentTextTheme.headline2.copyWith(color: Colors.white), textAlign: TextAlign.center,
                ),
                TimeComparison(isMobile: true),
              ],
            ),
          ),
          Container(
              width: SizeConfig.scaleW*60,
              child: Image.asset("assets/coffee_just_machine.png")
          ),
        ],
      ),
    );
  }
}