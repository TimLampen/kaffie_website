import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 229, 217, 1),
        elevation: 0,
        title: Row(
          children: [
            Container(
              child: Text("Kaffiee", style: Theme.of(context).textTheme.headline2.copyWith(fontSize: SizeConfig.scaleH*3)),
              margin: EdgeInsets.only(right: SizeConfig.scaleW*2),
            ),
            Container(
              child: Text("Product"),
              margin: EdgeInsets.only(right: SizeConfig.scaleW*2),
            ),
            Container(
              child: Text("Design"),
              margin: EdgeInsets.only(right: SizeConfig.scaleW*2),
            ),
            Container(
              child: Text("Sustainability"),
              margin: EdgeInsets.only(right: SizeConfig.scaleW*2),
            ),
            Container(
              child: Text("Features"),
              margin: EdgeInsets.only(right: SizeConfig.scaleW*2),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(//first section container
            color: Theme.of(context).highlightColor,
            height: SizeConfig.scaleH*90,
            child: GridView.extent(
              maxCrossAxisExtent: 800,
              children: [
                Column(
                  children: [
                    Container(
                      child: Text("Simplify your morning.", style: Theme.of(context).textTheme.headline1.copyWith(fontSize: SizeConfig.scaleH*8)),
                      padding: EdgeInsets.only(left: SizeConfig.scaleW*15, top: SizeConfig.scaleH*15),
                      width: SizeConfig.scaleW*55,
                    ),
                  ],
                ),
                Container(
                  width: SizeConfig.scaleW*45,
                  child: Image.asset("assets/brew_no_bg.png")
                )
              ],
            )
          ),
          Container(
            color: Theme.of(context).accentColor,
            height: SizeConfig.scaleH*100,
          ),
        ],
      ),
    );
  }

}
