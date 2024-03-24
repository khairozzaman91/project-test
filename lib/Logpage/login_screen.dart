

import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {




  LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
   TextEditingController emailController = TextEditingController();

   TextEditingController passwordController = TextEditingController();

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
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
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
                      obscureText: true,
                      decoration: InputDecoration(

                        suffixIcon: const Icon(Icons.visibility),
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

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
