import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';

class HealthFeature extends StatelessWidget {


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
