import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';

class HAppBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.widthConstraints());
        if (constraints.maxWidth > 500) {
          return Container(
              padding: EdgeInsets.only(
                  left: SizeConfig.scaleW * 1, top: SizeConfig.scaleH * 3),
              child: Row(
                children: [
                  Container(
                    child: Text("Kaffie", style: Theme
                        .of(context)
                        .textTheme
                        .headline2
                        .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                    margin: EdgeInsets.only(
                        left: SizeConfig.scaleW, right: SizeConfig.scaleW * 3),
                  ),
                  Container(
                    child: Text("Product", style: Theme
                        .of(context)
                        .textTheme
                        .headline3.copyWith(color: Colors.white)),
                    margin: EdgeInsets.only(right: SizeConfig.scaleW * 2),
                  ),
                  Container(
                    child: Text("Design", style: Theme
                        .of(context)
                        .textTheme
                        .headline3.copyWith(color: Colors.white)),
                    margin: EdgeInsets.only(right: SizeConfig.scaleW * 2),
                  ),
                  Container(
                    child: Text("Sustainability", style: Theme
                        .of(context)
                        .textTheme
                        .headline3.copyWith(color: Colors.white)),
                    margin: EdgeInsets.only(right: SizeConfig.scaleW * 2),
                  ),
                  Container(
                    child: Text("Features", style: Theme
                        .of(context)
                        .textTheme
                        .headline3.copyWith(color: Colors.white)),
                    margin: EdgeInsets.only(right: SizeConfig.scaleW * 2),
                  ),
                ],
              )
          );
        }
        else{
          return Container(
              color: Theme
                  .of(context)
                  .highlightColor,
              padding: EdgeInsets.only(
                   top: SizeConfig.scaleH * 3),
              child: Row(
                children: [
                  Container(
                    width: SizeConfig.scaleW*100,
                    child: Text("Kaffie", style: Theme
                        .of(context)
                        .accentTextTheme
                        .headline2
                        .copyWith(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                  ),
                ],
              )
          );
        }
      }
    );
  }

}
