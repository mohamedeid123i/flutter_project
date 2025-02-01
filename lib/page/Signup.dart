import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
                      Text("Sign up",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,fontFamily: "myfont"),),
                      SvgPicture.asset("assets/icons/signup.svg"),
                      SizedBox(height: 20,),
                      Center(
                        child: SingleChildScrollView(
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Container(
                              //   height: 50,
                              //   width: 250,
                              //   decoration: BoxDecoration(
                              //       color: Colors.purple[200],
                              //       borderRadius: BorderRadius.circular(50)
                              //   ),
                              //   padding: EdgeInsets.all(15),
                              //   child: TextField(
                              //     textInputAction: TextInputAction.next,
                              //     keyboardType: TextInputType.emailAddress,
                              //     decoration: InputDecoration(
                              //         prefixIcon: Icon(Icons.person,size: 25,color: Colors.purple),
                              //         hintText: "username",
                              //         border: InputBorder.none
                              //     ),
                              //
                              //   ),
                              // ),
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
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.person,size: 25,color: Colors.purple),
                                      hintText: "Username",
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
                                child: TextButton(onPressed: (){}, child: Text("Sign up",style: TextStyle(color: Colors.white,fontSize: 20),)),
                              ),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  SizedBox(width: 80,),
                                  Text("Already have Account? "),
                                  InkWell(child: Text("Login ",style: TextStyle(color: Colors.purple[800], )), onTap: (){Navigator.pushNamed(context, "login");}, )
                                ],
                              ),
                              SizedBox(
                                width: 220,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: Divider(color: Colors.purple[800],thickness: 1,),flex:1,),
                                    Text("OR"),
                                    Expanded(child: Divider(color: Colors.purple[800],thickness: 1,),flex:1,),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 44),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Container(

                                      padding: EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.purple , width: 1 )
                                      ),
                                      child: SvgPicture.asset(
                                        "assets/icons/facebook.svg",
                                        color: Colors.purple[800],
                                        height: 25,
                                      ),
                                    ),
                                    SizedBox(width: 22,),
                                    Container(
                                      padding: EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.purple , width: 1 )
                                      ),
                                      child: SvgPicture.asset(
                                        "assets/icons/google-plus.svg",
                                        color: Colors.purple[800],
                                        height: 25,
                                      ),
                                    ),
                                    SizedBox(width: 22,),

                                    Container(
                                      padding: EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.purple , width: 1 )
                                      ),
                                      child: SvgPicture.asset(
                                        "assets/icons/twitter.svg",
                                        color: Colors.purple[800],
                                        height: 25,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Positioned(top: 0,left: 0, child: Image.asset("assets/imgs/signup_top.png",width: 111,)),
                Positioned(bottom: 0, child: Image.asset("assets/imgs/main_bottom.png",width: 80,)),
              ],
            ),
          )

      ),
    );
  }
}
