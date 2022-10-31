import 'package:flutter/material.dart';

class RowFile extends StatelessWidget {
  const RowFile({
    Key? key,
    required this.medianValue, required this.englishText, required this.arabicText,
  }) : super(key: key);

  final String medianValue;
  final String englishText;
  final String arabicText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(englishText,style:TextStyle(color: Colors.black,backgroundColor: Colors.white,fontSize: 15)),
          Flexible(child: Text(medianValue)),
          Text(arabicText,style:TextStyle(color: Colors.black,backgroundColor: Colors.white,fontSize: 15),textDirection: TextDirection.rtl,),
        ],
      ),
    );
  }
}
