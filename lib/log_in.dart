
import 'package:first_pro/MyHomePage.dart';
import 'package:first_pro/registration.dart';
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
  final myController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    myController.dispose();
    super.dispose();
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RoozShop App")),
      body:Center(
        
        child: Column(
        
         children:  <Widget>[

            Padding(padding: EdgeInsets.all(20),
            child:
               TextField(
                controller: myController,
               
                decoration:  InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    // borderRadius:  BorderRadius.circular(12),
                    borderSide:  BorderSide(color: Colors.green, width: 2.0),
                    
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:changeTextFieldStyle ? BorderSide(color: Colors.red, width: 2.0) :BorderSide(color: Colors.blue, width: 2.0),
                    
                  ),
                  
                  hintText: 'Enter your username',
               
                ),
                onSubmitted: (String value){
                  debugPrint(value);
                },
             ),),


        Padding(padding: EdgeInsets.all(20),
            child:
               TextField(
               
                decoration:  InputDecoration(
                    focusedBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(20),
                                    
                    borderSide: BorderSide(color: Colors.green, width: 2.0 ),
                    
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                    
                  ),
                
                  
                  hintText: 'Enter your password',
               
                ),
                onSubmitted: (String value){
                  debugPrint(value);
                },
                
                           ),),

              Padding(padding: EdgeInsets.all(20),
            child:
               TextField(
               
                decoration:  InputDecoration(
                    focusedBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(20),
                                    
                    borderSide: BorderSide(color: Colors.green, width: 2.0 ),
                    
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                    
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
                    if(!match ){
                      if(changeTextFieldStyle==false){
                      changeTextFieldStyle = true;

                      }else{
                        changeTextFieldStyle = false;
                      }

                    }else{
                      print('object');


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
                        Text('Remember mw?'),
                        Padding(padding: EdgeInsets.all(40),
                        child:Text('Not Registered?' )
                        ),
                        
],)

                
             

             

              

         ],

        ),


      ),



    );
  }
}