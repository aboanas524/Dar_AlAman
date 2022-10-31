import 'package:flutter/material.dart';


class TextContainer extends StatelessWidget {

  final int flexContainer;
  final String textContainer;
  final double fontSize;
  const TextContainer({
    Key? key, required this.flexContainer, required this.textContainer, required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flexContainer,
      child: Container(
        padding:const EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black54)
        ),
        child:Center(child:Text(textContainer,style:TextStyle(color: Colors.black,backgroundColor: Colors.white,fontSize: fontSize),)),
      ),
    );
  }
}