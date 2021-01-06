import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> 
{

  navigateToLogin()async{
    Navigator.pushReplacementNamed(context, "Login");
  }

   navigateToRegister()async{

    Navigator.pushReplacementNamed(context, "SignUp");
  }
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: Colors.red[100],

      body: Container(
        child: Column(
          children: <Widget>[

            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Stack(
              alignment: Alignment.topCenter,
              children:<Widget>
              [
                Padding
                (
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.20),
                  child: Container
                  (
                    
                    child: Row
                    (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.6,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container
                                (
                                  width: 300,
                                  child: ClipRRect
                                  ( 
                                    borderRadius: BorderRadius.circular(20),
                                    child: FlatButton
                                    (
                                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                                      color: Colors.blueGrey[900],
                                      onPressed: (){},
                                      child: Text
                                      ('Sign Up As Shelter',style: TextStyle
                                      (
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      ) 
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15.0),
                                Container
                                (
                                  width: 300,
                                  child: ClipRRect
                                  ( 
                                    borderRadius: BorderRadius.circular(20),
                                    child: FlatButton
                                    (
                                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                                      color: Colors.pink,
                                      onPressed: navigateToRegister,
                                      child: Text
                                      ('Sign Up As User',style: TextStyle
                                      (
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      ) 
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30.0),
                                Text('Already Signed Up ? ',style: TextStyle(color:Colors.black, fontSize: 20,),),
                                Container
                                (
                                  
                                  child: ClipRRect
                                  (
                                    borderRadius: BorderRadius.circular(29),
                                    child: FlatButton
                                    (
                                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                                      onPressed: navigateToLogin,
                                      child: Text('Sign In',style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        decoration: TextDecoration.underline
                                                                  ),
                                                ) 
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],

                    ),
                  ),                  
                ),
                Container
                (
                  height: MediaQuery.of(context).size.height * 0.25,

                  child: Image(image: AssetImage("assets/images/StartCat.png"),
                  fit: BoxFit.contain,
                            ),
                ),                

              ]
            ),
          
            Container
            (
              height: MediaQuery.of(context).size.height * 0.15,

              child: Image(image: AssetImage("assets/images/wool.png"),
              
                            ),
            ),
          ],
        ),
      ),
      
    );
  }
}