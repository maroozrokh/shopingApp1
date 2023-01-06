import 'package:flutter/material.dart';

class Mywid extends StatefulWidget {
   const Mywid({super.key, this.onTap,  this.myRadius,  this.myRadius1, this.myControllers, this.myIcon, this.obsPass, this.enaPass, this.autoPass,     });
    final Function()? onTap;
      // final dynamic?  myColor;
      // final dynamic?  myColor1;
  final dynamic? myRadius;
  final dynamic? myRadius1;
  final dynamic? myControllers ;
  final dynamic? myIcon ;
  final bool? obsPass;
  final bool? enaPass;
  final bool? autoPass;
   //or use this below
   // final void onTap;
  // final int? maxLebgth;

  @override
  State<Mywid> createState() => _Mywid();
}

class _Mywid extends State<Mywid> {
 

 

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onTap: widget.onTap,
      controller: widget.myControllers,
      obscureText:widget.obsPass ,
                enableSuggestions: widget.enaPass ,
                  autocorrect:widget.autoPass  ,
      decoration: InputDecoration(
        suffix: widget.myIcon,
        filled: true,
        


       fillColor: Color.fromARGB(255, 192, 225, 249),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color:Color.fromARGB(255, 192, 225, 249), width: 0.5),
          
          ),focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:BorderSide(color: Color.fromARGB(255, 192, 225, 249), width: 0.5),
      ),),
    






    );
  }
}