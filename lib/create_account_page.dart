import 'package:flutter/material.dart';
import 'package:sickle_cell_app1/my_details.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  bool isSignupScreen = true;
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
  child: Container(
    height: 300,
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(80),
        bottomRight: Radius.circular(80),
      ),
    ),
    padding: const EdgeInsets.only(top: 50),
    child:  Column(
      children: [
        Text(
          isSignupScreen ? "Welcome" : "Welcome Back",
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        const Text(
          "to",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        const Text(
          "Healthy Buddy",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        const Text(
          "Your Sickle Cell Guardian",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ],
    ),
  ),
),

            Positioned(
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.fromLTRB(20, 180, 20, 50),
                height: 610,
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: isSignupScreen
                                      ? const Color.fromARGB(255, 128, 124, 124)
                                      : Colors.red,
                                ),
                              ),
                              if (!isSignupScreen)
                                Container(
                                  margin: const EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.red,
                                ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "SIGN UP",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: isSignupScreen
                                      ? Colors.red
                                      : const Color.fromARGB(
                                          255, 128, 124, 124),
                                ),
                              ),
                              if (isSignupScreen)
                                Container(
                                  margin: const EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.red,
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    if (isSignupScreen)
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          const TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(35.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(35.0),
                                ),
                              ),
                              contentPadding: EdgeInsets.all(10),
                              hintText: "Email address",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 139, 136, 136)),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(35.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(35.0),
                                ),
                              ),
                              contentPadding: EdgeInsets.all(10),
                              hintText: "Enter Passowrd",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 139, 136, 136)),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(35.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(35.0),
                                ),
                              ),
                              contentPadding: EdgeInsets.all(10),
                              hintText: "Confirm Password",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 139, 136, 136)),
                            ),
                          ),
                          const SizedBox(
                            height: 80,
                          ),
                          
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all<Size>(
                                const Size(200,
                                    50),
                             // Set the desired width and height of the button
                              ),
                            ),
                            child: const Text('Create Account'),
                          ),
                            ],
                            ),
                    ),
                   if (!isSignupScreen) 
                    Container(
            margin: const EdgeInsets.only(top: 20),
            child:  Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(
                        Radius.circular(35.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(
                        Radius.circular(35.0),
                      ),
                    ),
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Email address",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 139, 136, 136),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(
                        Radius.circular(35.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(
                        Radius.circular(35.0),
                      ),
                    ),
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Password",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 139, 136, 136),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(onPressed: () {}, 
                child: const Text('Login')),
              ],
            ),
          ),
                   const  SizedBox(height: 10,),
                    Center(
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                         'Have an account? ',
                       style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                       ),
                      TextButton(
                      onPressed: () {
                       // Handle 'sign in' button press
                      },
                     child: const Text(
                        'Sign in',
                       style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          ),
                          ),
                         ),
                        ],
                         ),
                        ),
                        Row(
              children: [
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const MyDetailsPage();
                          },
                        ),
                      );
                    },
                    child: const Text('My Details'),
                  ),
                ),
              ],
            ),
                      ],
                    ),
              ),
        ),
        ],
                
                ),
                ),
            );
  }
}
