import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled4/page/Login.dart';
import 'package:untitled4/page/Signup.dart';
import 'package:untitled4/page/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        "welcome" : (context) => Welcome(),
        "login" : (context) => Login(),
        "signup" : (context) => Signup(),
      },
      home: Welcome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List names = ["1" , "2", "3","4","5" , "6" , "7"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Add functionality for the floating action button
      //     print("Floating Action Button Pressed!");
      //   },
      //   backgroundColor: Colors.blue,
      //   child: const Icon(Icons.add, color: Colors.white),
      // ),
      appBar: AppBar(
        elevation: 0, // Reduced elevation for a cleaner look
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            // Add functionality for the leading icon
            print("Leading Icon Pressed!");
          },
          icon: const Icon(Icons.list, color: Colors.black, size: 35),
        ),
        backgroundColor: Colors.grey[850],
        title: Text(
          "facebook",
          style: TextStyle(
            color: Colors.blue[700],
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Add functionality for the message icon
              print("Message Icon Pressed!");
            },
            icon: const Icon(Icons.message, color: Colors.blue),
          ),
          IconButton(
            onPressed: () {
              // Add functionality for the search icon
              print("Search Icon Pressed!");
            },
            icon: const Icon(Icons.search, color: Colors.blue),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Container
              // Container(
              //   padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              //   height: 200,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     color: Colors.black.withOpacity(.2),
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              //   child: const Center(
              //     child: Text(
              //       "Items",
              //       style: TextStyle(fontSize: 30),
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 20), // Spacer
              //
              // // Horizontal Scrollable Row
              // Wrap(
              //   spacing: 10,
              //     runSpacing: 10,
              //     alignment: WrapAlignment.spaceEvenly,
              //     direction: Axis.horizontal,
              //     children: List.generate(names.length,
              //           (index) => Container(
              //             height: 100,
              //             width: 70,
              //             child: ElevatedButton(
              //               onPressed: (){},
              //               style: ButtonStyle(
              //                 backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent),
              //                shape:  MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
              //               ), child: Center(
              //             child: Text(
              //               names[index].toString(), // Correctly calling toString()
              //             ),
              //                                 ),
              //             ),
              //           ),
              //     ),
              //   ),
              // //const SizedBox(height: 20), // Spacer
              // // Bottom Container
              // Container(
              //   height: 400,
              //   width: double.infinity,
              //   color: Colors.grey[200],
              //   child: const Center(
              //     child: Text(
              //       "Additional Content",
              //       style: TextStyle(fontSize: 24),
              //     ),
              //   ),
              // ),
              // SizedBox(height: 100,),
              //
              // Container(
              //   height: 300,
              //   width: 350,
              //   color: Colors.grey,
              //   child: Stack(
              //     children: [
              //       Positioned(
              //         top : 0,
              //         right: 0,
              //           child: Container(
              //             alignment: Alignment.center,
              //             color: Colors.red,
              //             height: 110,
              //             width: 100,
              //             child: Text("dfhggfdh"),
              //           )
              //       ),
              //       Positioned(
              //           child: Container(
              //             alignment: Alignment.center,
              //             color: Colors.blue,
              //             height: 100,
              //             width: 100,
              //             child: Text("dfhggfdh"),
              //           )
              //       ),
              //
              //       Center(
              //         child: Container(
              //           alignment: Alignment.center,
              //           color: Colors.green,
              //           height: 150,
              //           width: 150,
              //           child: Text("dfhggfdh"),
              //         ),
              //       ),
              //
              //     ],
              //   ),
              // ),
              // Container(
              //   padding: EdgeInsets.all(20),
              //   color: Colors.blue[200],
              //   height: 350,
              //   width: 200,
              //   child: Center(
              //     child: Wrap(
              //       spacing: 10,
              //       runSpacing: 10,
              //       alignment: WrapAlignment.spaceEvenly,
              //       direction: Axis.horizontal,
              //       children: List.generate(names.length,
              //             (index) => Container(
              //           height: 100,
              //           width: 70,
              //           child: ElevatedButton(
              //             onPressed: (){},
              //             style: ButtonStyle(
              //               backgroundColor: MaterialStateProperty.all(Colors.orange),
              //               shape:  MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
              //             ), child: Center(
              //             child: Text(
              //               names[index].toString(),
              //               style: TextStyle(
              //                 fontSize: 25
              //               ),// Correctly calling toString()
              //             ),
              //           ),
              //           ),
              //         ),
              //       ),
              //     ),
              //
              //   ),
              // ),
              // SizedBox(height: 150,),
              // Container(
              //   padding: EdgeInsets.all(15),
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     border:Border.all(color: Colors.blue,width: 2)
              //   ),
              //   child: SvgPicture.asset("assets/imgs/facebook.svg",
              //   color: Colors.blue[600],height: 80,width: 50,),
              // )
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.purple[200],
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
                    color: Colors.purple[200],
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
                 color: Colors.purple,
               ),
               height: 50,
               width: 250,
               child: TextButton(onPressed: (){}, child: Text("login",style: TextStyle(color: Colors.white,fontSize: 20),)),
             )
            ],
          ),
        ),
      ),
    );
  }
}