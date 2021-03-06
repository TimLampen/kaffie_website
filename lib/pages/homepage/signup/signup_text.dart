import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kaffie_website/pages/homepage/signup/emailform.dart';
import 'package:kaffie_website/theme/size_config.dart';

class MonitorSignupText extends StatefulWidget{

  final ScrollController scrollController;
  MonitorSignupText({Key key,@required this.scrollController}) : super(key: key);

  @override
  _MonitorSignupTextState createState() => _MonitorSignupTextState();
}

class _MonitorSignupTextState extends State<MonitorSignupText> {
  bool _titleTransparent = true;
  bool _subtitleTransparent = true;

  @override
  void initState(){
    super.initState();

    new Timer(Duration(milliseconds:  1500), () {
      setState(() {_titleTransparent = false;});
    });
    new Timer(Duration(seconds: 3), () {
      setState(() {_subtitleTransparent = false;});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 300),
      child: Column(
        children: [
          AnimatedOpacity(
              opacity: this._titleTransparent ? 0 : 1 ,
              duration: Duration(seconds: 1),
              child: Container(width: 800,child: Text("Reimagine the way you brew coffee.",style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.white), textAlign: TextAlign.center,),)
          ),
          SizedBox(height: SizeConfig.scaleH*2),
          AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: this._subtitleTransparent ? 0 : 1,
              child: Container(
                width: 600,
                child: Column(
                  children: [
                    Text("Sign up below to stay updated on information surrounding Kaffie's release.", style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white), textAlign: TextAlign.center,),
                    SizedBox(height: SizeConfig.scaleH*2),
                    MonitorEmailForm()
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class DesktopSignupText extends StatefulWidget{

  final ScrollController scrollController;
  DesktopSignupText({Key key,@required this.scrollController}) : super(key: key);

  @override
  _DesktopSignupTextState createState() => _DesktopSignupTextState();
}

class _DesktopSignupTextState extends State<DesktopSignupText> {
  bool _titleTransparent = true;
  bool _subtitleTransparent = true;

  @override
  void initState(){
    super.initState();

    new Timer(Duration(milliseconds:  1500), () {
      setState(() {_titleTransparent = false;});
    });
    new Timer(Duration(seconds: 3), () {
      setState(() {_subtitleTransparent = false;});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: SizeConfig.scaleW*10, top: 100, right: SizeConfig.scaleW*5),
      width: SizeConfig.scaleW*55,
      child: Column(
        children: [
          AnimatedOpacity(
            opacity: this._titleTransparent ? 0 : 1 ,
            duration: Duration(seconds: 1),
            child: Text("Reimagine the way you brew coffee.",style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.white))
          ),
          SizedBox(height: SizeConfig.scaleH*2),
          AnimatedOpacity(
            duration: Duration(seconds: 1),
            opacity: this._subtitleTransparent ? 0 : 1,
            child: Column(
              children: [
                Text("Sign up below to stay updated on information surrounding Kaffie's release.", style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white), textAlign: TextAlign.left,),
                SizedBox(height: SizeConfig.scaleH*2),
                DesktopEmailForm()
              ],
            )),
        ],
      ),
    );
  }
}

class LaptopSignupText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(top: 50, bottom: 100),
      width: 600,
      child: Column(
        children: [
          Text("Simplify your morning routine.", style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.white), textAlign: TextAlign.center,),
          SizedBox(height: SizeConfig.scaleH*2),
          Text("Mornings don???t have to be the worst part of your day. Kaffie makes it the best part.", style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white), textAlign: TextAlign.center,),
          SizedBox(height: SizeConfig.scaleH*2),
          LaptopEmailForm()
        ],
      ),
    );
  }
}

class MobileSignupText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(top: SizeConfig.scaleH*5, left: SizeConfig.scaleW*5, right: SizeConfig.scaleW*5),
      child: Column(
        children: [
          Text("Simplify your morning routine.", style: Theme.of(context).accentTextTheme.headline1.copyWith(color: Colors.white)),
          SizedBox(height: SizeConfig.scaleH*2),
          Text("Mornings don???t have to be the worst part of your day. Kaffie makes it the best part.", style: Theme.of(context).accentTextTheme.headline2.copyWith(color: Colors.white), textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
