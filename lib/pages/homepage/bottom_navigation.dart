import 'package:flutter/material.dart';
import 'package:kaffie_website/pages/homepage/signup/email_dialog.dart';
import 'package:kaffie_website/theme/size_config.dart';

class BottomNavigation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth > 580)
        return Container(
          height: 0,
        );
      else
        return Container(
          color: Theme.of(context).highlightColor,
          height: SizeConfig.scaleH*10,
          child: Row(
            children: [
              Container(
                width: SizeConfig.scaleW*65,
                padding: EdgeInsets.all(10),
                child: Text(
                  "Sign up for our newsletter and get notified when Kaffie launches publicly.",
                  maxLines: 2,
                  style: Theme.of(context).accentTextTheme.headline3),
              ),
              Container(
                width: SizeConfig.scaleW*30,
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: (){
                    showDialog(builder: (BuildContext context) {return EmailDialog();}, context: context);
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColorDark),
                  ),
                  child: Container(child: Text("Notify Me", style:  Theme.of(context).accentTextTheme.headline3.copyWith(fontWeight: FontWeight.bold, color: Colors.white),)),
                ),
              )
            ],
          ),
        );
    });
  }

}
