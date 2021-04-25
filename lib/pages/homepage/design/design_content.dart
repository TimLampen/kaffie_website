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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: SizeConfig.scaleW*60,
            padding: EdgeInsets.only(left: 50,right: 50),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/brew_bg.png")
            )
          ),
          Container(
            padding: EdgeInsets.only(right: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30)
            ),
            width: SizeConfig.scaleW*40,
            child: Column(
              children: [
                Text("From tucked away to center stage.", style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text("With Kaffie, you don't have to hide your coffee machine in a corner. With its aesthetically pleasing design, rounded corners, "
                    "and silent operation, Kaffie can be the centerpiece of any kitchen.", style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white)),
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
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: SizeConfig.scaleW*10, right: SizeConfig.scaleW*10, bottom: SizeConfig.scaleH*10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("From tucked away to center stage.", style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.white), textAlign: TextAlign.center,),
          SizedBox(height: 10),
          Text("With Kaffie, you don't have to hide your coffee machine in a corner. With its aesthetically pleasing design, rounded corners, "
              "and silent operation, Kaffie can be the centerpiece of any kitchen.", style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white), textAlign: TextAlign.center,),
          SizedBox(height: 30),
          Container(
            width: SizeConfig.scaleW*80,
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

class MobileDesignContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: SizeConfig.scaleW*5, right: SizeConfig.scaleW*5, bottom: SizeConfig.scaleH*10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("From tucked away to center stage.", style: Theme.of(context).accentTextTheme.headline1.copyWith(color: Colors.white), textAlign: TextAlign.center,),
          SizedBox(height: 10),
          Text("With Kaffie, you don't have to hide your coffee machine in a corner. With its aesthetically pleasing design, rounded corners, "
              "and silent operation, Kaffie can be the centerpiece of any kitchen.", style: Theme.of(context).accentTextTheme.headline2.copyWith(color: Colors.white), textAlign: TextAlign.center,),
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
