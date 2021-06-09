import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kaffie_website/theme/size_config.dart';

import '../slide_in_container.dart';

class DesignContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth > 1050){
            return DesktopDesignContent(width: constraints.maxWidth);
          }
          else if(constraints.maxWidth > 580){
            return LaptopDesignContent();
          }
          else{
            return MobileDesignContent();
          }
        }
    );
  }
}

class DesktopDesignContent extends StatelessWidget {

  double width;
  DesktopDesignContent({Key key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(elevation: 10, child: Image.asset("assets/brew_bg.png", width: 500,)),
                Container(
                  margin: EdgeInsets.only(left: 50),
                  width: 550,
                  child: Column(
                    children: [
                      Text("From tucked away to center stage.", style: Theme.of(context).textTheme.headline1),
                      SizedBox(height: 10),
                      Text("With Kaffie, you don't have to hide your coffee machine in a corner. With its aesthetically pleasing design, rounded corners, "
                          "and silent operation, Kaffie can be the centerpiece of any kitchen.", style: Theme.of(context).textTheme.headline2),
                    ],
                  ),
                )
              ],
            ),
          )
        ]
      ),
    );
  }
}

class LaptopDesignContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.scaleH*5),
        padding: EdgeInsets.all(SizeConfig.scaleW*2.5),
        decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
      child: Column(
        children: [
          Container(
            width: SizeConfig.scaleW*70,
            padding: EdgeInsets.only(bottom: SizeConfig.scaleH*5),
            child: Column(
              children: [
                Text("From tucked away to center stage.", style: Theme.of(context).textTheme.headline1.copyWith(fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text("With Kaffie, you don't have to hide your coffee machine in a corner. With its aesthetically pleasing design, rounded corners, "
                    "and silent operation, Kaffie can be the centerpiece of any kitchen.", style: Theme.of(context).textTheme.headline2),
              ],
            ),
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/brew_bg.png", width: SizeConfig.scaleW*70)
              )
          ),

        ],
      ),
    );
  }
}

class MobileDesignContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print(Scrollable.of(context).position.pixels);
    return Container(
      padding: EdgeInsets.all(SizeConfig.scaleW*5),
      decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          Text("From tucked away to center stage.", style: Theme.of(context).accentTextTheme.headline1, textAlign: TextAlign.center),
          SizedBox(height: 10),
          Text("With Kaffie, you don't have to hide your coffee machine in a corner. With its aesthetically pleasing design, rounded corners, "
              "and silent operation, Kaffie can be the centerpiece of any kitchen.", style: Theme.of(context).accentTextTheme.headline2, textAlign: TextAlign.center,),
          SizedBox(height: 20),
          SlideInContainer(
            widget: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/brew_bg.png")
            ),
          ),
        ],
      ),
    );
  }
}
