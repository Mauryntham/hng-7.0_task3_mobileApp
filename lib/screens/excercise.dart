// Shows a single exercise and a time countdown


import 'package:flutter/material.dart';
import 'package:ifitness/widgets/bottom_navigation.dart';
import 'package:ifitness/widgets/exercise_card.dart';


class SingleExercise extends StatelessWidget {
  SingleExercise({@required this.title,
    @required this.svgSrc,@required this.time});
  final title, svgSrc, time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigation(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(child: ExerciseCard(title:title ,svgSrc:svgSrc ,time:time,)),
          ],
        ),
      ),

    );
  }
}

