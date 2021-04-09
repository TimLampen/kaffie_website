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
        title: Container(
          margin: EdgeInsets.only(left: SizeConfig.scaleW*1, top: SizeConfig.scaleH*3),
          child: Row(
            children: [
              Container(
                child: Text("Kaffiee", style: Theme.of(context).textTheme.headline2.copyWith(fontWeight: FontWeight.bold)),
                margin: EdgeInsets.only(right: SizeConfig.scaleW*2),
              ),
              Container(
                child: Text("Product", style: Theme.of(context).textTheme.headline2),
                margin: EdgeInsets.only(right: SizeConfig.scaleW*2),
              ),
              Container(
                child: Text("Design", style: Theme.of(context).textTheme.headline2),
                margin: EdgeInsets.only(right: SizeConfig.scaleW*2),
              ),
              Container(
                child: Text("Sustainability", style: Theme.of(context).textTheme.headline2),
                margin: EdgeInsets.only(right: SizeConfig.scaleW*2),
              ),
              Container(
                child: Text("Features", style: Theme.of(context).textTheme.headline2),
                margin: EdgeInsets.only(right: SizeConfig.scaleW*2),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(//first section container
            color: Theme.of(context).highlightColor,
            height: SizeConfig.scaleH*90,
            child: GridView.extent(//basically the row with the text and image
              maxCrossAxisExtent: 800,
              children: [
                Container(
                  padding: EdgeInsets.only(left: SizeConfig.scaleW*10, top: SizeConfig.scaleH*20),
                  width: SizeConfig.scaleW*55,
                  child: Column(
                    children: [
                      Text("Simplify your morning routine.", style: Theme.of(context).textTheme.headline1),
                      SizedBox(height: SizeConfig.scaleH*2),
                      Text("Mornings don’t have to be the worst part of your day. Help us help you in making it the best.", style: Theme.of(context).textTheme.headline2),
                      SizedBox(height: SizeConfig.scaleH*2),
                      Row(
                        children: [
                          Container(
                            width: SizeConfig.scaleW*25,
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
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
                                child: Text("Get Notified", style: TextStyle(color: Colors.black),)),
                              onPressed: () {},
                            )
                          )
                        ],
                      ),
                    ],
                  ),
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
