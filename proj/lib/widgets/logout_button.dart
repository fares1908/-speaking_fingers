import 'package:flutter/material.dart';
import 'package:proj/themes/Font_Styles.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration:BoxDecoration(
                color: Color(0xFF0CAED4),
                borderRadius: BorderRadius.circular(10),
                
              ) ,
              width: 343,
              height:50 ,
              child: Center( 
                child:Text('Log out',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeightHelper.extraBold,
                ),
                ),
                 ), 
                 
            ),
          );
  }
}