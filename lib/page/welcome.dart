
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

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
                    Text("Welcome To EDU",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: "myfont"),),
                    SizedBox(height: 20,),
                    SvgPicture.asset("assets/icons/chat.svg"),
                    SizedBox(height: 20,),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            //padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.purple[800],
                            ),
                            height: 50,
                            width: 250,
                            child: TextButton(onPressed: (){Navigator.pushNamed(context,"login");}, child: Text("login",style: TextStyle(color: Colors.white,fontSize: 20),)),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            //padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.purple[100],
                            ),
                            height: 50,
                            width: 250,
                            child: TextButton(onPressed: (){Navigator.of(context).pushNamed("signup"); }, child: Text("sign up",style: TextStyle(color: Colors.white,fontSize: 20),)),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Positioned(top: 0,left: 0, child: Image.asset("assets/imgs/main_top.png",width: 111,)),
              Positioned(bottom: 0, child: Image.asset("assets/imgs/main_bottom.png",width: 111,)),

            ],
          ),
        )
        
      ),
    );
  }
}
