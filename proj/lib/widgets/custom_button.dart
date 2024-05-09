import 'package:flutter/material.dart';
import 'package:proj/themes/Font_Styles.dart';

class CustomButton extends StatelessWidget {
 final void Function()? onTap;
  const CustomButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:onTap ,
      child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF0CAED4),
                ) ,
                width: 343,
                height:50 ,
                child: Center( 
                  child:Text('Next  >',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeightHelper.medium
                  ),
                  ),
                   ), 
                   
              ),
            ),
    );
  }
}