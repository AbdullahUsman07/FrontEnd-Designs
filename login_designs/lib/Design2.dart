import'package:flutter/material.dart';

class SecondDesign extends StatefulWidget{
  const SecondDesign({super.key});

  @override
  State<SecondDesign> createState()=> _SecondDesignState();
}

class _SecondDesignState extends State<SecondDesign>{
  @override
  
  
  Widget build(BuildContext context){
    final width=MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: [
          Container(  
            height: 400,
            child:Stack(  
              children: [
                Positioned(
                  top:-40,
                  height:400,
                  width: width+30,
                  child: Container(  
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/background-1.png'),
                        fit:BoxFit.fill,
                        )
                    ),
                  ),
                  ),
                  Positioned(
                    height: 400,
                  width: width+30,
                  child: Container(  
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/background-2.png'),
                        fit:BoxFit.fill,
                        ) 
                    ),
                  ),
                  ),
              ],
            )
          ),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 40),
        child:Column(children: [
          const Text('Login',style:TextStyle(color:Color.fromRGBO(49,39,79,1),fontSize: 30)),
          const SizedBox(height:40),
          Container(  
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration( 
              borderRadius:BorderRadius.circular(10.0),
             color:Colors.white,
              boxShadow:const [
                BoxShadow(
                  color:Color.fromRGBO(196, 135, 198, 1),
                  blurRadius: 20.0,
                  offset: Offset(0, 10),
                )
              ]
            ),
            child:Column(
              children: [
                Container(  
                  padding:const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border:Border(bottom: BorderSide(
                      color:Colors.grey,
                    ),
                    ),
                  ),
                  child:const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Username',
                      hintStyle: TextStyle(color:Colors.grey),
                    ),
                  )
                ),
                Container(  
                  padding:const EdgeInsets.all(10),
                  child:const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(color:Colors.grey),
                    ),
                  )
                ),
                const SizedBox(height: 20,),
                const Center(child: Text('Forgot Password?',style:TextStyle(color:Color.fromRGBO(196, 135, 198, 1)))),
                const SizedBox(height:40),
                Container(
                  height:50,
                  margin:EdgeInsets.symmetric(horizontal: 60),
                  decoration: BoxDecoration(
                    color:Color.fromRGBO(49, 39, 79, 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child:const Center(child: Text('Login',style:TextStyle(color:Colors.white))),
                ),
                const SizedBox(height:40),
                const Center(
                  child:Text('Create Account',style:TextStyle(color: Color.fromRGBO(49, 39, 79, 1))),
                )
              ],)
          ),
          
        ],
        )
        ),
        ],
      )
    );
  }
}

