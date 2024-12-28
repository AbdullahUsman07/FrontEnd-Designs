import 'package:flutter/material.dart';


class LoginDesign extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
      backgroundColor: Colors.white,
      body:Container(
        child:Column(
          children:[
            Container(
              height:400,
              decoration:BoxDecoration(  
                image:DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit:BoxFit.fill,
                  ),
              ),
              child:Stack(  
                children: [
                  Positioned(  
                    left:30,
                    height:80,
                    width:200,
                    child:Container(  
                      decoration: BoxDecoration(   
                        image:DecorationImage(
                          image: AssetImage('assets/images/light-1.png'),
                          ),
                      ),
                    )
                  ),
                  Positioned( 
                    left:140, 
                    height:80,
                    width:150,
                    child:Container(  
                      decoration: BoxDecoration(   
                        image:DecorationImage(
                          image: AssetImage('assets/images/light-2.png'),
                          ),
                      ),
                    )
                  ),
                  Positioned(  
                    right: 40,
                    top:40,
                    height:80,
                    width:150,
                    child:Container(  
                      decoration: BoxDecoration(   
                        image:DecorationImage(
                          image: AssetImage('assets/images/clock.png'),
                          ),
                      ),
                    )
                  ),
                  Positioned(  
                    child:Container(
                      margin: EdgeInsets.only(top:50),
                      child:Center(
                        child: Text('Login',style:TextStyle(color:Colors.white,fontSize:50,fontWeight:FontWeight.bold)),)
                     ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:EdgeInsets.all(30.0),
              child:Column( 
                children:[
                  Container(  
                    padding:EdgeInsets.all(5.0),
                    decoration:BoxDecoration( 
                      color:Colors.white,
                      borderRadius:BorderRadius.circular(10.0),
                      boxShadow:[
                        BoxShadow(
                        color:Color.fromRGBO(143, 148, 251, .2),
                        blurRadius: 20.0,
                        offset: Offset(0, 10)
                        ),
                      ]
                    ),
                    child:Column(
                      children: [
                        Container(  
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border:Border(bottom:BorderSide(color:Colors.grey),)
                          ),
                          child:TextField(
                            decoration:InputDecoration(  
                              border:InputBorder.none,
                              hintText: 'Enter Email or Phone No',
                              hintStyle: TextStyle(color:Colors.grey[400],)
                            )
                          )
                        )
                      ],)
                  )
                ]
              )
            ),
          ],
        )
        ),
      ),
      );
  }
}