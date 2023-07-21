import 'package:flutter/material.dart';
import 'package:movies_catalog/constants/colors_app.dart';
import 'package:movies_catalog/rest/model/model_movie.dart';
import 'package:movies_catalog/rest/service/api_service.dart';

class CustomCardThumbnail extends StatefulWidget {
  String value;
  CustomCardThumbnail({super.key, required this.value});

  @override
  State<CustomCardThumbnail> createState() => _CustomCardThumbnailState();
}

class _CustomCardThumbnailState extends State<CustomCardThumbnail> {


  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kShadowBoxColor.withOpacity(0.25),
            blurRadius: 5,
            spreadRadius: 1,
            offset: const Offset(0, 3),
          )
        ],
        borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(
                  widget.value,),
              fit: BoxFit.fill)),
              margin: EdgeInsets.only(left: 15,right: 15,top: 20,bottom: 35),
              
    );
  }
}
