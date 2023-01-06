import 'package:flutter/material.dart';
class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _Registration();
}

class _Registration extends State<Registration> {






  @override
  Widget build(BuildContext context) {
    List<String> registerTextNameList = ['Username: ','Password: ','Email: ','Phone: ','Address: ' ];

    void myRegistElement(List myList,int index){


          Row(
            children: [
               Expanded(child:
              Padding(padding: EdgeInsets.fromLTRB(50,20,10,20),
                     child:   Text(myList[index])            )
              
              ), 
              
              Expanded(child:
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 5, 20),
                     child:   
                     TextField(
               
                decoration:  InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                    
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                      borderRadius:  BorderRadius.circular(50),
                    
                  ),
                  
                 
               
                ),
                onSubmitted: (String value){
                  debugPrint(value);
                },
             ),
                     
                                 )
              
              ),

                 



          ],);




          




    }




    return Scaffold(
            appBar: AppBar(title: Text("RoozShop App")),

      body:
      Column(
        children:[
          // Container(
//       child:   myRegistElement(registerTextNameList,0)
//  ,
//           ),
          

          Row(
            children: [
               Expanded(child:
              Padding(padding: EdgeInsets.fromLTRB(50,20,10,20),
                     child:   Text('Username: ')            )
              
              ), 
              
              Expanded(child:
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 5, 20),
                     child:   
                     TextField(
               
                decoration:  InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                    
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                      borderRadius:  BorderRadius.circular(50),
                    
                  ),
                  
                 
               
                ),
                onSubmitted: (String value){
                  debugPrint(value);
                },
             ),
                     
                                 )
              
              ),

                 



            ],




        ),
          Row(
            children: [
               Expanded(child:
              Padding(padding: EdgeInsets.fromLTRB(50,20,10,20),
                     child:   Text('Password: ')            )
              
              ), 
              
              Expanded(child:
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 5, 20),
                     child:   
                     TextField(
               
                decoration:  InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                    
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                      borderRadius:  BorderRadius.circular(50),
                    
                  ),
                  
                
                ),
                onSubmitted: (String value){
                  debugPrint(value);
                },
             ),
                     
                                 )
              
              ),

                 



            ],




        ),

            Row(
            children: [
               Expanded(child:
              Padding(padding: EdgeInsets.fromLTRB(50,20,10,20),
                     child:   Text('Email: ')            )
              
              ), 
              
              Expanded(child:
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 5, 20),
                     child:   
                     TextField(
               
                decoration:  InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                    
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                      borderRadius:  BorderRadius.circular(50),
                    
                  ),
                  
                
                ),
                onSubmitted: (String value){
                  debugPrint(value);
                },
             ),
                     
                                 )
              
              ),

                 



            ],




        ),

          Row(
            children: [
               Expanded(child:
              Padding(padding: EdgeInsets.fromLTRB(50,20,10,20),
                     child:   Text('Phone: ')            )
              
              ), 
              
              Expanded(child:
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 5, 20),
                     child:   
                     TextField(
               
                decoration:  InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                    
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                    
                  ),
                  
               
                ),
                onSubmitted: (String value){
                  debugPrint(value);
                },
             ),
                     
                                 )
              
              ),

                 



            ],


            




        ),

        
          Row(
            children: [
               Expanded(child:
              Padding(padding: EdgeInsets.fromLTRB(50,20,10,20),
                     child:   Text('Address: ')            )
              
              ), 
              
              Expanded(child:
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 5, 20),
                     child:   
                     TextField(
               
                decoration:  InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                    
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                    
                  ),
                  
               
                ),
                onSubmitted: (String value){
                  debugPrint(value);
                },
             ),
                     
                                 )
              
              ),

                 



            ],




        ),

        ElevatedButton(onPressed: (){
          // Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) =>  Registration()),
          //         );




        }, child: Text('Registered')),




        ],



        

        







      )

         
       );


  }
}