import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';

class HAppBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
     builder: (context, constraints) {
        if (constraints.maxWidth > 580) {
          return Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 25, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Kaffie", style: Theme
                      .of(context)
                      .textTheme
                      .headline2
                      .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                  Text("HOW IT WORKS", style: Theme
                      .of(context)
                      .textTheme
                      .headline3.copyWith(color: Colors.white)),
                  Text("DESIGN", style: Theme
                      .of(context)
                      .textTheme
                      .headline3.copyWith(color: Colors.white)),
                  Text("FEATURES", style: Theme
                      .of(context)
                      .textTheme
                      .headline3.copyWith(color: Colors.white)),
                  Text("SUSTAINABILITY", style: Theme
                      .of(context)
                      .textTheme
                      .headline3.copyWith(color: Colors.white)),
                ],
              )
          );
        }
        else{
          return Container(
              padding: EdgeInsets.only(
                   top: SizeConfig.scaleH * 3),
              child: Container(
                width: SizeConfig.scaleW*100,
                child: Text("Kaffie", style: Theme
                    .of(context)
                    .accentTextTheme
                    .headline1
                    .copyWith( color: Colors.white), textAlign: TextAlign.center,),
              )
          );
        }
      }
    );
  }

}
