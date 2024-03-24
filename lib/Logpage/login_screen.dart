

import 'package:flutter/material.dart';
import 'package:projecttest/Home_screen/HomePage.dart';

class LogInPage extends StatefulWidget {




  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {

   TextEditingController emailController = TextEditingController();
   TextEditingController passwordController = TextEditingController();

   bool isObsecure = false;
   final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://w0.peakpx.com/wallpaper/312/954/HD-wallpaper-light-blue-azzurro-blue-sky-celeste-cielo-clear-color-sky-thumbnail.jpg"),
              fit: BoxFit.cover,
            )
          ),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 60.0, bottom: 0, right: 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: IconButton(onPressed: (){},
                        icon: const Icon( Icons.arrow_back_ios,size: 30, ),)
                    ),
                  ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0,top: 30.0, bottom: 0, right: 0),
                child: Text("Welcome \nBack", style: TextStyle(fontSize: 38, fontWeight: FontWeight.w700, color: Colors.white),),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(40), topRight: Radius.circular(40)),
                ),

                height: 603,
                child: Form(

                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,

                        validator: (value){
                          if(value == null){
                            return "Email can't be empty";
                          }
                          if(value.length < 3){
                            return "Invalid Email";
                          } if(!value.contains("@")){
                            return "Invalid User Email";
                          }
                        },
                        textInputAction: TextInputAction.next,

                        decoration: InputDecoration(
                          fillColor: Colors.blue.withOpacity(.04),
                          filled: true,
                          hintText: "Enter your email",
                          hintStyle:  const TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
                          labelText: "Email",
                          prefixIcon: const Icon(Icons.email),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide:  const BorderSide(
                              color: Colors.blue
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20),
                              borderSide:  const BorderSide(
                                color: Colors.blue,
                              ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: passwordController,

                        validator: (value){
                          if(value == null){
                            return "password can't be empty";
                          }
                          if(value.length < 7){
                            return "weak password";
                          }
                        },
                        keyboardType: TextInputType.number,
                        onEditingComplete: () {
                          if(_formKey.currentState!.validate()){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) =>const HomePage()));
                          }
                        },
                        obscureText: isObsecure,
                        decoration: InputDecoration(

                          suffixIcon: IconButton(
                            onPressed: (){
                               setState(() {
                                  isObsecure =!isObsecure;
                               });
                            },
                            icon: const Icon(Icons.visibility),
                          ),
                          fillColor: Colors.blue.withOpacity(.04),
                          filled: true,
                          hintText: "Enter your password",
                          hintStyle:  const TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
                          labelText: "password",
                          prefixIcon: const Icon(Icons.email),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide:  const BorderSide(
                                  color: Colors.blue
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:  const BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                   Align(
                     alignment: Alignment.centerRight,
                      child: TextButton(onPressed: (){},
                         child:const Text("Forget Password?",
                           style: TextStyle(
                             fontSize: 20,
                             color: Colors.blue,
                             fontWeight: FontWeight.w700,

                         ),)
                     ),
                   ),
                      const Spacer(),
                      MaterialButton(onPressed: (){
                        if(_formKey.currentState!.validate()){
                          print("Successfully");
                        } else{
                              print("Something is wrong");
                        }
                      },
                        height: 50,
                        color: Colors.blue,
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Text("Sign in",
                         style: TextStyle(
                           fontSize: 22,
                         color: Colors.white,
                         fontWeight: FontWeight.w700,
                       ),
                      ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      RichText(
                        text: const TextSpan(
                          text: "Don't have an account",
                          style: TextStyle(fontSize: 18, color: Colors.black54),
                          children: <TextSpan>[
                            TextSpan(text: " Sing up",
                                style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold, color: Colors.blue)),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
