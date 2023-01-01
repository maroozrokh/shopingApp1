import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogIn();
}

class _LogIn extends State<LogIn> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RoozShop App")),
      body:Center(
        
        child: Column(
        
         children: const <Widget>[

            Padding(padding: EdgeInsets.all(20),
            child:
               TextField(
               
                decoration:  InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    // borderRadius:  BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                    
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                    
                  ),
                  
                  hintText: 'Enter your username',
               
                ),
                // onSubmitted: (String value){
                //   debugPrint(value);
                // },
                // controller: _controller,
                // onSubmitted: (String value) {
                //   debugPrint(value);
                // },
                           ),),


        Padding(padding: EdgeInsets.all(20),
            child:
               TextField(
               
                decoration:  InputDecoration(
                    // border:  OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(6)),

                  focusedBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(20),
                                    
                    borderSide: BorderSide(color: Colors.green, width: 2.0 ),
                    
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                    
                  ),
                
                  
                  hintText: 'Enter your password',
               
                ),
                // onSubmitted: (String value){
                //   debugPrint(value);
                // },
                // controller: _controller,
                // onSubmitted: (String value) {
                //   debugPrint(value);
                // },
                           ),),

         ElevatedButton(onPressed: (){
          print('mahsa'),


              } , child: Text('Log in')),





         ],



        ),





      ),




    );
  }
}