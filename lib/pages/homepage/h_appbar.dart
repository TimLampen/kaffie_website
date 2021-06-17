import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';

class HAppBar extends StatelessWidget{


  final ScrollController scrollController;
  HAppBar({Key key,@required this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
     builder: (context, constraints) {

       if(constraints.maxWidth > 1150){
         return Container(
             padding: EdgeInsets.symmetric(
                 horizontal: 25, vertical: 25),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Text("Kaffie", style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white)),
                 HeaderReference(title: "HOW IT WORKS", scrollController: this.scrollController, scrollPosition: 800),
                 HeaderReference(title: "DESIGN", scrollController: this.scrollController, scrollPosition: 1500),
                 HeaderReference(title: "FEATURES", scrollController: this.scrollController, scrollPosition: 2800),
                 HeaderReference(title: "SUSTAINABILITY", scrollController: this.scrollController, scrollPosition: 4500),
               ],
             )
         );
       }
       else if(constraints.maxWidth > 600) {
         return Container(
             padding: EdgeInsets.symmetric(
                 horizontal: 25, vertical: 25),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Text("Kaffie", style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white)),
                 HeaderReference(title: "HOW IT WORKS", scrollController: this.scrollController, scrollPosition: 800),
                 HeaderReference(title: "DESIGN", scrollController: this.scrollController, scrollPosition: 1600),
                 HeaderReference(title: "FEATURES", scrollController: this.scrollController, scrollPosition: 3400),
                 HeaderReference(title: "SUSTAINABILITY", scrollController: this.scrollController, scrollPosition: 4900),
               ],
             )
         );
       }
       else{
         return Container(
             padding: EdgeInsets.only(top: SizeConfig.scaleH * 3),
             child: Container(
               width: SizeConfig.scaleW*100,
               child: Text("Kaffie", style: Theme.of(context).accentTextTheme.headline1.copyWith( color: Colors.white), textAlign: TextAlign.center,),
             )
         );
       }
      }
    );
  }
}

class HeaderReference extends StatelessWidget {

  final String title;
  final double scrollPosition;
  final ScrollController scrollController;

  HeaderReference({Key key, this.title, this.scrollPosition, this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        this.scrollController.animateTo(this.scrollPosition, duration: Duration(milliseconds: 500), curve: Curves.decelerate);
      },
      child: Text(this.title, style: Theme.of(context).textTheme.headline3.copyWith(color: Colors.white))
    );
  }

}

