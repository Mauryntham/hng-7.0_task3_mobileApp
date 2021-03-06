import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExerciseCard extends StatelessWidget {

  ExerciseCard({@required this.title,
    @required this.svgSrc,
    @required this.time});
  final title, svgSrc, time;


  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context)
        .size; // this will give us the total height and width of our device.
    return Stack(
        children:<Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color:Color(0xff72c3f9),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 45.0, left: 16),
                  child: Text(title,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0,
                      fontFamily: 'Work sans/WorkSans-Bold',
                      color:Color(0xff2d438d),
                    ),),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(time,
                    style: TextStyle(
                        fontFamily: 'Work Sans/WorkSans-Bold',
                        fontSize: 18.0,
                        color: Color(0xff2d438d)
                    ),),
                ),
                Center(
                  child: SvgPicture.asset(svgSrc,
                  height: size.height * .15),
                )
              ],
            ),
          ),

        ]

    );
  }
}

