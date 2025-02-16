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
        "welcome" : (context) => const Welcome(),
        "login" : (context) => const Login(),
        "signup" : (context) => const Signup(),
      },
      home: const Welcome(),
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
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
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

              print("Message Icon Pressed!");
            },
            icon: const Icon(Icons.message, color: Colors.blue),
          ),
          IconButton(
            onPressed: () {

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
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.purple[200],
                  borderRadius: BorderRadius.circular(50)
                ),
                padding: const EdgeInsets.all(15),
                child: const TextField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person,size: 25,color: Colors.purple),
                    hintText: "Your Email",
                    border: InputBorder.none


                  ),

                ),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.purple[200],
                    borderRadius: BorderRadius.circular(50)
                ),
                padding: const EdgeInsets.all(15),
                child: const TextField(
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,size: 25,color: Colors.purple,),
                    hintText: "password",
                      border: InputBorder.none,
                    suffixIcon: Icon(Icons.visibility)

                  ),

                ),
              ),
             const SizedBox(height: 20,),
             Container(
               //padding: EdgeInsets.all(20),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(30),
                 color: Colors.purple,
               ),
               height: 50,
               width: 250,
               child: TextButton(onPressed: (){}, child: const Text("login",style: TextStyle(color: Colors.white,fontSize: 20),)),
             )
            ],
          ),
        ),
      ),
    );
  }
}