import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kaffie_website/theme/size_config.dart';


class DesignContent extends StatelessWidget {

  final ScrollController scrollController;
  DesignContent({Key key,@required this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth > 1150){
            return DesktopDesignContent();
          }
          else if(constraints.maxWidth > 600){
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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 300),
            child: Image.asset("assets/ellipse.png", width: 800,)
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 150),
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
      child: Stack(
          children: [
            Container(
                alignment: Alignment.topCenter,
                child: Image.asset("assets/ellipse_long.png", width: 600)
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 600,
                    margin: EdgeInsets.only(bottom: 75),
                    child: Column(
                      children: [
                        Text("From tucked away to center stage.", style: Theme.of(context).textTheme.headline1, textAlign: TextAlign.center,),
                        SizedBox(height: 10),
                        Text("With Kaffie, you don't have to hide your coffee machine in a corner. With its aesthetically pleasing design, rounded corners, "
                            "and silent operation, Kaffie can be the centerpiece of any kitchen.", style: Theme.of(context).textTheme.headline2, textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                  Material(elevation: 10, child: Image.asset("assets/brew_bg.png", width: 600,)),
                ],
              ),
            ),
          ]
      ),
    );
  }
}


class MobileDesignContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
          children: [
            Container(
                alignment: Alignment.topCenter,
                child: Image.asset("assets/ellipse_long.png", width: 325)
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 325,
                    margin: EdgeInsets.only(bottom: 25),
                    child: Column(
                      children: [
                        Text("From tucked away to center stage.", style: Theme.of(context).accentTextTheme.headline1, textAlign: TextAlign.center,),
                        SizedBox(height: 10),
                        Text("With Kaffie, you don't have to hide your coffee machine in a corner. With its aesthetically pleasing design, rounded corners, "
                            "and silent operation, Kaffie can be the centerpiece of any kitchen.", style: Theme.of(context).accentTextTheme.headline2, textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                  Material(elevation: 10, child: Image.asset("assets/brew_bg.png", width: 325)),
                ],
              ),
            ),
          ]
      ),
    );
  }
}
