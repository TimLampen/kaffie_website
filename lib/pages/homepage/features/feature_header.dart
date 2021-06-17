import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';


class FeatureHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth > 1150){
            return DesktopFeatureHeader();
          }
          else if(constraints.maxWidth > 600) {
            return LaptopFeatureHeader();
          }
          else{
            return MobileFeatureHeader();
          }
        }
      );
  }
}

class DesktopFeatureHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: SizeConfig.scaleW*100,
          alignment: Alignment.center,
          child: Text("Kaffie", style: Theme.of(context).textTheme.headline1.copyWith(fontSize: 400, color: Theme.of(context).highlightColor)),
        ),
        Container(
          margin: EdgeInsets.only(top: 370),
          color: Theme.of(context).highlightColor,
          width: SizeConfig.scaleW*100,
          height: 200,
        )
      ],
    );
  }

}

class LaptopFeatureHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: SizeConfig.scaleW*100,
          alignment: Alignment.center,
          child: Text("Kaffie", style: Theme.of(context).textTheme.headline1.copyWith(fontSize: 225, color: Theme.of(context).highlightColor)),
        ),
        Container(
          margin: EdgeInsets.only(top: 200),
          color: Theme.of(context).highlightColor,
          width: SizeConfig.scaleW*100,
          height: 200,
        )
      ],
    );
  }
}

class MobileFeatureHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: SizeConfig.scaleW*100,
          alignment: Alignment.center,
          child: Text("Kaffie", style: Theme.of(context).accentTextTheme.headline1.copyWith(fontSize: 125, color: Theme.of(context).highlightColor)),
        ),
        Container(
          margin: EdgeInsets.only(top: 110),
          color: Theme.of(context).highlightColor,
          width: SizeConfig.scaleW*100,
          height: 50,
        )
      ],
    );
  }
}
