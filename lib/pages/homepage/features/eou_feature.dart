import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';


class EaseOfUseFeature extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth > 1150){
            return DesktopEaseOfUseFeature();
          }
          else if(constraints.maxWidth > 600){
            return LaptopEaseOfUseFeature();
          }
          else{
            return MobileEaseOfUseFeature();
          }
        }
    );
  }

}

class DesktopEaseOfUseFeature extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 100, bottom: 100),
      child: Column(
        children: [
          Container(
              width: 700,
              child: Column(
                children: [
                  Text("Snap to start.", style: Theme.of(context).textTheme.headline1),
                  SizedBox(height: 10),
                  Text("Once you put the coffee pod in and close the cap - let Kaffie do the rest. Kaffie stays automatically primed and instantly starts when the cap is closed. Coffee flows through the internal network of tubes to your cup to ensure a perfect brew every time.", style: Theme.of(context).textTheme.headline2, textAlign: TextAlign.center,),
                  SizedBox(height: 50),
                ],
              )),
          Image.asset("assets/kaffie_cut.png", width: 700)
        ],
      ),
    );
  }
}

class LaptopEaseOfUseFeature extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 100, bottom: 100),
      child: Column(
        children: [
          Container(
              width: 600,
              child: Column(
                children: [
                  Text("Snap to start.", style: Theme.of(context).textTheme.headline1),
                  SizedBox(height: 10),
                  Text("Once you put the coffee pod in and close the cap - let Kaffie do the rest. Kaffie stays automatically primed and instantly starts when the cap is closed. Coffee flows through the internal network of tubes to your cup to ensure a perfect brew every time.", style: Theme.of(context).textTheme.headline2, textAlign: TextAlign.center,),
                  SizedBox(height: 50),
                ],
              )),
          Image.asset("assets/kaffie_cut.png", width: 500)
        ],
      ),
    );
  }
}

class MobileEaseOfUseFeature extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 100, bottom: 100),
      child: Column(
        children: [
          Container(
              width: 350,
              child: Column(
                children: [
                  Text("Snap to start.", style: Theme.of(context).accentTextTheme.headline1),
                  SizedBox(height: 10),
                  Text("Once you put the coffee pod in and close the cap - let Kaffie do the rest. Kaffie stays automatically primed and instantly starts when the cap is closed. Coffee flows through the internal network of tubes to your cup to ensure a perfect brew every time.", style: Theme.of(context).accentTextTheme.headline2, textAlign: TextAlign.center,),
                  SizedBox(height: 50),
                ],
              )),
          Image.asset("assets/kaffie_cut.png", width: 300)
        ],
      ),
    );
  }
}
