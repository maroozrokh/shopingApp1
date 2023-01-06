
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
  bool showPass1 = false;
  final myController = TextEditingController();
  final myPassController = TextEditingController();
  final myRePassController = TextEditingController();


  void showPassword(int i){

    switch(i){

      case 1:
         setState(() {
                    if(!showPass ){
                      showPass = true;
                      
                    }else{
                      showPass =false;
                    }
                 
                    
                  });
                  break;

          case 2:
         setState(() {
                    if(!showPass1 ){
                      showPass1 = true;
                      
                    }else{
                      showPass1 =false;
                    }
                 
                    
                  });
                  break;              

    }


  }


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


void validateInfo(){

        setState(() {
                    RegExp  emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[yahoo||gmail]+\.[com]+");
                    bool match = emailValid.hasMatch(myController.text);
                    
                    if(!match || myController.text == null ){
                       checkIcon = false;
                       showMyDialog();
                      }else{
                        checkIcon = true;
                    }
                  
                 myPassController.text != myRePassController.text ? showMyDialog1() : print('correct');

                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) =>  Registration()),
                  // );
                });


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
        
        child: ListView(
        
         children:  <Widget>[

          Image.asset('assets/images/img4.png'),
//           Image.network(  
//   'https://picsum.photos/250?image=9',  
// ) ,
          
          Padding(padding: EdgeInsets.only(left: 20,top: 10),child: Text("Email: ")),
         

            Padding(padding: EdgeInsets.fromLTRB(20,0,20,20),child: Mywid(
                      myControllers: myController,
                      myIcon: checkIcon ?  Icon(Icons.check) : null,
                      obsPass: false,
                       enaPass:false ,
                      autoPass: false,
                    ),),
                  Padding(padding: EdgeInsets.only(left: 20,top: 10),child: Text("Password: ")),

                     Padding(padding: EdgeInsets.fromLTRB(20,0,20,20),child: Mywid(
                      myControllers: myPassController,
                      myIcon:  Icon(Icons.remove_red_eye),
                     
                      obsPass: showPass ? true : false,
                      enaPass:showPass ? false : true ,
                      autoPass: showPass ? false : true,
                      onTap:(){ 
                        showPassword(1);
                      
                  },
                    ),),

          Padding(padding: EdgeInsets.only(left: 20,top: 10),child: Text("Repassword: ")),

                      Padding(padding: EdgeInsets.fromLTRB(20,0,20,20),child: Mywid(
                      myControllers: myRePassController,
                      myIcon:  Icon(Icons.remove_red_eye),
                     
                      obsPass: showPass1 ? true : false,
                      enaPass:showPass1 ? false : true ,
                      autoPass: showPass1 ? false : true,
                      onTap:(){ 
                        showPassword(2);
                      
                  },
                    ),),
        


              Row(children: <Widget>[
                Padding(padding: EdgeInsets.all(20)),
                 Checkbox(  
                      activeColor: Colors.blue,  
                      value: this.valuefirst,  
                      onChanged: (bool? value)  {  
                        setState(() {  
                          this.valuefirst = value!;  
                        });
                        } ),
                        Text('I agree to the Terms & conditions \n and policy privacy'),
                        
                      
],),
          Padding(padding: EdgeInsets.fromLTRB(20,0,20,20),child:Container(
              width: MediaQuery.of(context).size.width,
              child:ElevatedButton(onPressed: (){
                validateInfo();
                 
              }, child: Text('Create account') ,), ) ,),

                Padding(padding: EdgeInsets.fromLTRB(20,0,20,20),child:Container(
              width: MediaQuery.of(context).size.width,
              
              child:ElevatedButton(onPressed: (){
                print('google');
                 
              }, child:Container(  alignment: Alignment.center , child:
                // Row(children: [ 
                // Icon(Icons.email),              
              Text('Sign up with google') ,
              // ],
              // ),
              ),
                
              ), 
              )
               ,),
                Padding(padding: EdgeInsets.fromLTRB(100,0,20,20),child: Text('Already have an acount?Log in') ,)
              ,
                
            
              
         ],

        ),


      ),



    );
  }
}