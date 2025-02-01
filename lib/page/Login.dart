import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
// appBar: AppBar(
//   centerTitle: true,
//   title: Text("Welcome"),
//   backgroundColor: Colors.purpleAccent,
// ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),
                      Text("Login",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,fontFamily: "myfont"),),
                      SizedBox(height: 20,),
                      SvgPicture.asset("assets/icons/login.svg"),
                      SizedBox(height: 20,),
                      Center(
                        child: SingleChildScrollView(
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 250,
                                decoration: BoxDecoration(
                                    color: Colors.purple[100],
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                padding: EdgeInsets.all(15),
                                child: TextField(
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.person,size: 25,color: Colors.purple),
                                      hintText: "Your Email",
                                      border: InputBorder.none


                                  ),

                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                height: 50,
                                width: 250,
                                decoration: BoxDecoration(
                                    color: Colors.purple[100],
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                padding: EdgeInsets.all(15),
                                child: TextField(
                                  textInputAction: TextInputAction.done,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock,size: 25,color: Colors.purple,),
                                      hintText: "password",
                                      border: InputBorder.none,
                                      suffixIcon: Icon(Icons.visibility)

                                  ),

                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                //padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.purple[800],
                                ),
                                height: 50,
                                width: 250,
                                child: TextButton(onPressed: (){}, child: Text("login",style: TextStyle(color: Colors.white,fontSize: 20),)),
                              ),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  SizedBox(width: 80,),
                                  Text("Donot have an Account? "),
                                  InkWell(child: Text("Sign up",style: TextStyle(color: Colors.purple[800], )), onTap: (){Navigator.pushNamed(context, "signup");}, )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Positioned(top: 0,left: 0, child: Image.asset("assets/imgs/main_top.png",width: 111,)),
                Positioned(bottom: 0,right: 0, child: Image.asset("assets/imgs/login_bottom.png",width: 111,)),

              ],
            ),
          )

      ),
    );

  }
}


