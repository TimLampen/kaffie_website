import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';

class Footer extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth > 1150){
            return DesktopFooter();
          }
          else if(constraints.maxWidth > 600) {
            return LaptopFooter();
          }
          else{
            return MobileFooter();
          }
        }
    );
  }

}


class DesktopFooter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.scaleW*100,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
            color: Colors.white,
            child: Row(
                children: [
                  Image.asset("assets/kaffie_logo.png", width: 200),
                  Container(
                    height: 150,
                    padding: EdgeInsets.only(left: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("HOW IT WORKS", style: Theme.of(context).textTheme.headline3.copyWith(color: Color.fromRGBO(163, 145, 113, 1))),
                        Text("DESIGN", style: Theme.of(context).textTheme.headline3.copyWith(color: Color.fromRGBO(163, 145, 113, 1))),
                        Text("FEATURES", style: Theme.of(context).textTheme.headline3.copyWith(color: Color.fromRGBO(163, 145, 113, 1))),
                        Text("SUSTAINABILITY", style: Theme.of(context).textTheme.headline3.copyWith(color: Color.fromRGBO(163, 145, 113, 1)))
                      ],
                    ),
                  )
                ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(25),
            width: SizeConfig.scaleW*100,
            color: Color.fromRGBO(163, 145, 113, 1),
            child: Text("Made with ❤ by Tim, Elan, and Selina. Developed at Queen's University (Kingston, Canada)", style: Theme.of(context).textTheme.headline3.copyWith(color: Colors.white)

    ),
          )
        ]
      ),
    );
  }
}

class LaptopFooter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.scaleW*100,
      child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
              color: Colors.white,
              child: Row(
                children: [
                  Image.asset("assets/kaffie_logo.png", width: 200),
                  Container(
                    height: 150,
                    padding: EdgeInsets.only(left: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("HOW IT WORKS", style: Theme.of(context).textTheme.headline3.copyWith(color: Color.fromRGBO(163, 145, 113, 1))),
                        Text("DESIGN", style: Theme.of(context).textTheme.headline3.copyWith(color: Color.fromRGBO(163, 145, 113, 1))),
                        Text("FEATURES", style: Theme.of(context).textTheme.headline3.copyWith(color: Color.fromRGBO(163, 145, 113, 1))),
                        Text("SUSTAINABILITY", style: Theme.of(context).textTheme.headline3.copyWith(color: Color.fromRGBO(163, 145, 113, 1)))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(25),
              width: SizeConfig.scaleW*100,
              color: Color.fromRGBO(163, 145, 113, 1),
              child: Text("Made with ❤ by Tim, Elan, and Selina.", style: Theme.of(context).textTheme.headline3.copyWith(color: Colors.white)

              ),
            )
          ]
      ),
    );
  }
}

class MobileFooter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.scaleW*100,
      child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              color: Colors.white,
              child: Column(
                children: [
                  Image.asset("assets/kaffie_logo.png", width: 200),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("HOW IT WORKS", style: Theme.of(context).accentTextTheme.headline3.copyWith(color: Color.fromRGBO(163, 145, 113, 1))),
                      Text("DESIGN", style: Theme.of(context).accentTextTheme.headline3.copyWith(color: Color.fromRGBO(163, 145, 113, 1))),
                      Text("FEATURES", style: Theme.of(context).accentTextTheme.headline3.copyWith(color: Color.fromRGBO(163, 145, 113, 1))),
                      Text("SUSTAINABILITY", style: Theme.of(context).accentTextTheme.headline3.copyWith(color: Color.fromRGBO(163, 145, 113, 1)))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(25),
              width: SizeConfig.scaleW*100,
              color: Color.fromRGBO(163, 145, 113, 1),
              child: Text("Made with ❤ by Tim, Elan, and Selina.", style: Theme.of(context).accentTextTheme.headline2.copyWith(color: Colors.white)

              ),
            )
          ]
      ),
    );
  }
}
