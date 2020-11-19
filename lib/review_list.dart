import 'package:flutter/material.dart';
import 'package:proyecto/review.dart';

class ReviewList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final reviewList = Column(
      children: <Widget>[
        Review("assets/images/persona1.jpg","Laura Leon","1 review - 3 photos", 4, "Muy buen lugar para visitar."),
        Review("assets/images/persona2.jpg","Maria Eugenia","4 review - 2 photos", 2, "Pronto lo conocere."),
        Review("assets/images/persona3.jpg","Zulema Rios","3 review - 2 photos", 5, "Exelente."),
        Review("assets/images/persona4.jpg","Jose Luis","8 review - 4 photos", 1, "No me gusto."),
        Review("assets/images/persona5.jpg","Carlos ","6 review - 3 photos", 3, "buen lugar.")
      ],
    );

    return reviewList;
  }
}
