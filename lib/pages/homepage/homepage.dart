import 'package:flutter/material.dart';
import 'package:kaffie_website/pages/homepage/h_appbar.dart';
import 'package:kaffie_website/theme/size_config.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      appBar: HAppBar(appBar: AppBar()),
      body: ListView(
        children: <Widget>[
          Container(//first section container
            color: Theme.of(context).highlightColor,
            height: SizeConfig.scaleH*75,
            child: Row(//basically the row with the text and image
              children: [
                Container(
                  padding: EdgeInsets.only(left: SizeConfig.scaleW*10, top: SizeConfig.scaleH*20),
                  width: SizeConfig.scaleW*47,
                  child: Column(
                    children: [
                      Text("Simplify your morning routine.", style: Theme.of(context).textTheme.headline1),
                      SizedBox(height: SizeConfig.scaleH*2),
                      Text("Mornings don’t have to be the worst part of your day. Help us make it the best part.", style: Theme.of(context).textTheme.headline2),
                      SizedBox(height: SizeConfig.scaleH*2),
                      Row(
                        children: [
                          Container(
                            width: SizeConfig.scaleW*25,
                            child: TextField(
                              style: Theme.of(context).textTheme.headline3,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white
                                  )
                                ),
                                labelStyle: TextStyle(color: Colors.black),
                                fillColor: Colors.white,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  )
                                ),
                                labelText: "Email address",
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: SizeConfig.scaleW*2),
                            height: SizeConfig.scaleH*6,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Theme.of(context).accentColor)
                              ),
                              child: Container(
                                padding: EdgeInsets.only(left: SizeConfig.scaleW*1, right: SizeConfig.scaleW*1),
                                child: Text("Get Notified", style: Theme.of(context).textTheme.headline3.copyWith(fontWeight: FontWeight.bold))),
                              onPressed: () {},
                            )
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: SizeConfig.scaleW*53,
                  child: Image.asset("assets/brew_no_bg.png")
                )
              ],
            )
          ),
          Container(
            color: Theme.of(context).primaryColorDark,
            height: SizeConfig.scaleH*60,
          ),
          Container(
            color: Theme.of(context).accentColor,
            height: SizeConfig.scaleH*100,
          )
        ],
      ),
    );
  }

}
