import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';


class CupFeature extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth > 1150){
            return DesktopCupFeature();
          }
          else if(constraints.maxWidth > 600) {
            return LaptopCupFeature();
          }
          else{
            return MobileCupFeature();
          }
        }
    );
  }
}

class DesktopCupFeature extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.scaleW*100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/coffee_cup.png", width: SizeConfig.scaleW*100,),
          Container(
            width: SizeConfig.scaleW*100,
            height: SizeConfig.scaleW*100*776/1920,
            color: Color.fromRGBO(45, 27, 4, .36),
          ),
          Container(
              alignment: Alignment.center,
              width: 1000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Saving the environment one brew at a time. ", style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.white), textAlign: TextAlign.center,),
                SizedBox(height: 10),
                Text("Kaffie ships with two premium bamboo-core reusable pods. Have a specific coffee bean that you enjoy? No problem – ground it, place it in the pod, and taste it within seconds using Kaffie. ", style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white), textAlign: TextAlign.center,),

              ],
            )
          )
        ],
      ),
    );
  }
}

class LaptopCupFeature extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.scaleW*100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/coffee_cup.png", width: SizeConfig.scaleW*100),
          Container(
            width: SizeConfig.scaleW*100,
            height: SizeConfig.scaleW*100*776/1920,
            color: Color.fromRGBO(45, 27, 4, .36),
          ),
          Container(
              alignment: Alignment.center,
              width: 600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Saving the environment. ", style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.white), textAlign: TextAlign.center,),
                  SizedBox(height: 10),
                  Text("Kaffie ships with two premium bamboo-core reusable pods. Place your favourite bean in the pod and taste it within seconds. ", style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white), textAlign: TextAlign.center,),

                ],
              )
          )
        ],
      ),
    );
  }
}

class MobileCupFeature extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.scaleW*100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/coffee_cup_square.png", width: SizeConfig.scaleW*100),
          Container(
            width: SizeConfig.scaleW*100,
            height: SizeConfig.scaleW*100*776/847,
            color: Color.fromRGBO(45, 27, 4, .36),
          ),
          Container(
              alignment: Alignment.center,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Saving the environment. ", style: Theme.of(context).accentTextTheme.headline1.copyWith(color: Colors.white), textAlign: TextAlign.center,),
                  SizedBox(height: 10),
                  Text("Kaffie ships with two premium bamboo-core reusable pods. Place your favourite bean in the pod and taste it within seconds. ", style: Theme.of(context).accentTextTheme.headline2.copyWith(color: Colors.white), textAlign: TextAlign.center,),

                ],
              )
          )
        ],
      ),
    );
  }
}
