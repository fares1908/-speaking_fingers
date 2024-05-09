import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
   CustomTextField({this.hintText});
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height:50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
      ),
      child: TextField(
        
              decoration: InputDecoration(
                
                fillColor: Color(0xFFC4C4C4).withOpacity(0.20),
                filled: true,
                hintText: hintText,
              
                 contentPadding: EdgeInsets.only(left: 15),
                border :OutlineInputBorder(
                 borderRadius: BorderRadius.circular(80),
                   borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xFFC4C4C4).withOpacity(0.20),
                  ),
                ),
               
              ),
            ),
    );
    
  }
}