import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj/widgets/custom_button.dart';
import 'package:proj/widgets/custom_text_feild.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proj/themes/Font_Styles.dart';

class Onboarding2_screen extends StatelessWidget {
  const Onboarding2_screen({super.key});

  @override
  Widget build(BuildContext context) {
  FontWeightHelper fontWeightHelper = FontWeightHelper();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        
          children: [
          Stack(
              children:[
                 SvgPicture.asset('images/Onboarding1.svg',width: 400,),  

                 Positioned(
                  top: 110,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 8.0),
                     child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  SvgPicture.asset('images/map_sign-language.svg',
                                  ),
                             
                              ],),
                   ),
                 ),]),
         
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [  Text(
                                     'Speaking Fingers',
                                     textAlign: TextAlign.left,
                                     style:TextStyle(
                                       color: Colors.black,
                                       fontSize: 28,
                                       fontFamily: 'Mulish',
                                       fontWeight: FontWeightHelper.extraBold
                                       
                                     ),
                                     
                                   ),
                                       Divider(
                        color: Colors.black,
                        thickness: 1,
                        indent: 2,
                        endIndent: 150,
                        height: 10,
                                       ),
                                   Text(
                                     'Professional application to \n convert sign language to\n text & record',
                                     textAlign: TextAlign.left,
                                     style:TextStyle(
                                       color: Colors.black,
                                       fontSize: 16,
                                       fontFamily: 'Mulish',
                                     ),
                                     
                                   ),],),
        ),
                 Column(
                   children: [
                     SvgPicture.asset(
                      'images/illu.svg',
                      ),
                       const Text(
                                   'convert sign language \n      to text & record ',
                                   textAlign: TextAlign.left,
                                   style:TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeightHelper.extraBold,
                  
                                   ),
                                   
                                 ),
                                  
                   ],
                 ),

                 Row(
                   children: [

                    Row(children: [
                        Container(width: 30,height: 10, decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0XFFCDE5FA)
                      ),),
                      Container(width: 30,height: 10, decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue
                      ),),
                    ],),
Padding(
  padding: const EdgeInsets.only(left:250),
  child: GestureDetector(
    onTap: (){},
    child: Container(
      height:70, width: 70,
      child: Center(
        child: Text('>',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),),
      ),
    
    decoration: BoxDecoration(
      color:  Color(0xFF252525),
      borderRadius: BorderRadius.circular(80),

    ),
    ),
    ),
)                   ],
                 )
          ],
        ),
      ),

    );
  }
}