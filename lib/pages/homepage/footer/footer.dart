import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';

class Footer extends StatelessWidget {

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
            child: Text("Made with ❤ by Tim, Elan, and Selina. Developed in Queen's University (Kingston, Canada)", style: Theme.of(context).textTheme.headline3.copyWith(color: Colors.white)

    ),
          )
        ]
      ),
    );
  }

}
