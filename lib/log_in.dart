
import 'dart:io';

import 'package:first_pro/MyHomePage.dart';
import 'package:first_pro/my_field.dart';
import 'package:first_pro/registration.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogIn();

 
}

class _LogIn extends State<LogIn> {
  
  // bool val = true;
  bool valuefirst = false;  
  bool valuesecond = false;  
  bool changeTextFieldStyle = false;
  bool checkIcon = false;
  bool showPass = false;
  final myController = TextEditingController();
  final myPassController = TextEditingController();
  final myRePassController = TextEditingController();

Future<void> showMyDialog() async {
  return showDialog<void>(
    context: context,
    // barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Error'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('Your Email is not Valid!'),
            ],
          ),
        ),
        actions: <Widget>[
             TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
          
        ],
      );
    },
  );
} 



Future<void> showMyDialog1() async {
  return showDialog<void>(
    context: context,
    // barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Error'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('Your password is not correct!'),
            ],
          ),
        ),
        actions: <Widget>[
             TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
          
        ],
      );
    },
  );
} 






  @override
  void dispose() {
    // TODO: implement dispose
    myController.dispose();
    myPassController.dispose();
    myRePassController.dispose();
    super.dispose();
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RoozShop App")),
      body:Center(
        
        child: Column(
        
         children:  <Widget>[

            Padding(padding: EdgeInsets.all(20),child: Mywid(
                      myControllers: myController,
                      myIcon: checkIcon ?  Icon(Icons.check) : null,
                    ),),
        
                     Padding(padding: EdgeInsets.all(20),child: Mywid(
                      myControllers: myPassController,
                      myIcon: checkIcon ?  Icon(Icons.check) : null,
                      obsPass: showPass ? true : false,
                      enaPass:showPass ? false : true ,
                      autoPass: showPass ? false : true,
                    ),),
        

        Padding(padding: EdgeInsets.all(20),
            child:
               TextField(
                controller: myPassController,
               



                obscureText: showPass ? true : false,
                enableSuggestions: showPass ? false : true,
                  autocorrect: showPass ? false : true,
              
               
                decoration:  InputDecoration(

                  
                       suffixIcon: Icon(Icons.remove_red_eye),
 
                       
                  filled: true,
                  fillColor: Color.fromARGB(255, 192, 225, 249),
                    focusedBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(12),
                     borderSide: BorderSide(color: Color.fromARGB(255, 192, 225, 249), width: 0.5) ,
                    
                  ),
                  enabledBorder: OutlineInputBorder(
                     borderRadius:  BorderRadius.circular(12),
                     borderSide: BorderSide(color: Color.fromARGB(255, 192, 225, 249), width: 0.5) ,
                    
                  ),
                
                  
                 
               
                ),
                // onSubmitted: (String value){
                //   debugPrint(value);
                // },
                
                 onTap: (){
                  setState(() {
                    if(!showPass){
                      showPass = true;
                    }else{
                      showPass =false;
                    }
                 
                    
                  });

                 },          ),
                           ),

              Padding(padding: EdgeInsets.all(20),
            child:
               TextField(
               controller: myRePassController,
                decoration:  InputDecoration(
                     suffixIcon: Icon(Icons.remove_red_eye),
                  filled: true,
                  fillColor: Color.fromARGB(255, 192, 225, 249),
                    focusedBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(20),
                                    
                    borderRadius:  BorderRadius.circular(12),
                     borderSide: BorderSide(color: Color.fromARGB(255, 192, 225, 249), width: 0.5) ,
                    
                  ),
                  enabledBorder: OutlineInputBorder(
                     borderRadius:  BorderRadius.circular(12),
                     borderSide: BorderSide(color: Color.fromARGB(255, 192, 225, 249), width: 0.5) ,
                    
                  ),
                
                  
                  hintText: 'Enter your Repassword',
               
                ),
                onSubmitted: (String value){
                  debugPrint(value);
                },
                
                ),),

              ElevatedButton(onPressed: (){
                setState(() {
                  print(myController.text);

                    RegExp  emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[yahoo||gmail]+\.[com]+");
                    bool match = emailValid.hasMatch(myController.text);
                    if(!match || myController.text==null ){
                      //  changeTextFieldStyle = false;
                       checkIcon = false;
                       showMyDialog();
                      
                
                    }else{
                      print('object');
                      // changeTextFieldStyle = true;
                      checkIcon = true;

                    }
                  

                    if(myPassController.text == myRePassController.text){
                      print('eq');
                    }else{
                      print('not eq');
                      showMyDialog1();
                    }

                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) =>  Registration()),
                  // );
                });
                
              }, child: Text('log in') ,),

              Row(children: <Widget>[
                Padding(padding: EdgeInsets.all(20)),
                 Checkbox(  
                    
                     checkColor: Colors.greenAccent,  
                      activeColor: Colors.red,  
                      value: this.valuefirst,  
                      onChanged: (bool? value)  {  
                        setState(() {  
                          this.valuefirst = value!;  
                        });
                        } ),
        
                        
                        Text('I agree to the Terms & conditions \n and policy privacy'),
                       
                        
],),


                
             

             

              

         ],

        ),


      ),



    );
  }
}