import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';

class CupFeature extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.scaleW*100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/coffee_cup.png", width: SizeConfig.scaleW*100,),
          Container(
            width: SizeConfig.scaleW*1000,
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
