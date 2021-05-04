import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kaffie_website/theme/size_config.dart';

class DesignContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth > 1050){
            return DesktopDesignContent();
          }
          else if(constraints.maxWidth > 500){
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
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.75),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/brew_bg.png", width: SizeConfig.scaleW*40,)
            )
          ),
          Container(
            width: SizeConfig.scaleW*45,
            margin: EdgeInsets.only(left: SizeConfig.scaleW*5),
            child: Column(
              children: [
                Text("From tucked away to center stage.", style: Theme.of(context).textTheme.headline1.copyWith(fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text("With Kaffie, you don't have to hide your coffee machine in a corner. With its aesthetically pleasing design, rounded corners, "
                    "and silent operation, Kaffie can be the centerpiece of any kitchen.", style: Theme.of(context).textTheme.headline2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LaptopDesignContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: SizeConfig.scaleW*60,
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
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.75),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/brew_bg.png", width: SizeConfig.scaleW*60,)
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
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: SizeConfig.scaleW*5, right: SizeConfig.scaleW*5, bottom: SizeConfig.scaleH*5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("From tucked away to center stage.", style: Theme.of(context).accentTextTheme.headline1, textAlign: TextAlign.center,),
          SizedBox(height: 10),
          Text("With Kaffie, you don't have to hide your coffee machine in a corner. With its aesthetically pleasing design, rounded corners, "
              "and silent operation, Kaffie can be the centerpiece of any kitchen.", style: Theme.of(context).accentTextTheme.headline2, textAlign: TextAlign.center,),
          SizedBox(height: 20),
          Container(
              width: SizeConfig.scaleW*90,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/brew_bg.png")
              )
          ),
        ],
      ),
    );
  }
}
