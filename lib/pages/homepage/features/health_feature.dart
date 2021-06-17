import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';


class HealthFeature extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth > 1150){
            return DesktopHealthFeature();
          }
          else if(constraints.maxWidth > 600){
            return LaptopHealthFeature();
          }
          else{
            return MobileHealthFeature();
          }
        }
    );
  }
}


class DesktopHealthFeature extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 75),
          width: SizeConfig.scaleW*100,
          child: Container(
            width: 600,
            height: 600,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white
            ),
          ),
        ),
        Container(
          width: SizeConfig.scaleW*100,
          alignment: Alignment.center,
          child: Container(
            width: 2,
            height: 150,
            color: Colors.black,
          ),
        ),
        Container(
          width: SizeConfig.scaleW*100,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 600),
          child: Container(
            width: 2,
            height: 150,
            color: Colors.black,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left:58, top: 17),
                    child: Image.asset("assets/health_screenshot.jpg", width: 270)),
                  Image.asset("assets/iphone_outline.png", width: 400),
                ],
              ),
              Container(
                width: 500,
                child: Column(
                  children: [
                    Text("Automatically track your caffeine intake.", style: Theme.of(context).textTheme.headline1),
                    SizedBox(height: 10),
                    Text("Kaffie automatically links with Apple Health to track your caffeine intake trends so you can stay informed and keep healthy.", style: Theme.of(context).textTheme.headline2),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]
    );
  }
}

class LaptopHealthFeature extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(//background circle
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 75),
            width: SizeConfig.scaleW*100,
            child: Container(
              width: 600,
              height: 600,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
              ),
            ),
          ),
          Container(
            width: SizeConfig.scaleW*100,
            alignment: Alignment.center,
            child: Container(
              width: 2,
              height: 75,
              color: Colors.black,
            ),
          ),
          Container(
            width: SizeConfig.scaleW*100,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 675),
            child: Container(
              width: 2,
              height: 75,
              color: Colors.black,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 150),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 35, top: 10),
                        child: Image.asset("assets/health_screenshot.jpg", width: 170)),
                    Image.asset("assets/iphone_outline.png", width: 250),
                  ],
                ),
                Container(
                  width: 350,
                  child: Column(
                    children: [
                      Text("Auto-track your caffeine intake.", style: Theme.of(context).textTheme.headline1),
                      SizedBox(height: 10),
                      Text("Kaffie automatically links with Apple Health to track your caffeine intake trends so you can stay informed and keep healthy.", style: Theme.of(context).textTheme.headline2),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]
    );
  }
}

class MobileHealthFeature extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            width: SizeConfig.scaleW*100,
            child: Column(
              children: [
                Container(
                  width: 2,
                  height: 50,
                  color: Colors.black,
                ),
                Container(//background circle
                  alignment: Alignment.center,
                  width: 350,
                  height: 350,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                  ),
                ),
                Container(
                  width: 2,
                  height: 50,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 20, top: 5),
                        child: Image.asset("assets/health_screenshot.jpg", width: 103)),
                    Image.asset("assets/iphone_outline.png", width: 150),
                  ],
                ),
                Container(
                  width: 200  ,
                  child: Column(
                    children: [
                      Text("Auto-track your caffeine intake.", style: Theme.of(context).accentTextTheme.headline1),
                      SizedBox(height: 10),
                      Text("Kaffie automatically links with Apple Health to track your caffeine intake trends so you can stay informed and keep healthy.", style: Theme.of(context).accentTextTheme.headline2),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]
    );
  }
}
