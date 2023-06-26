import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sickle_cell_app1/Choose%20user.dart';
import 'package:sickle_cell_app1/home_page1.dart';
// import 'package:sickle_cell_app1/slider.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSignupScreen = true;
  bool isRememberMe = false;
  bool isLoginHovered = false;
  bool isSignupHovered = false;

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
                child: Column(
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
    MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
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
    ),
    MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
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
                    : const Color.fromARGB(255, 128, 124, 124),
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
                              height: 40,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, 
                                MaterialPageRoute(builder: (context) => ChooseUserPage()));
                              },
                              style: ButtonStyle(
                                fixedSize: MaterialStateProperty.all<Size>(
                                  const Size(200, 50),
                                  // Set the desired width and height of the button
                                ),
                              ),
                              child: const Text('Sign Up'),
                            ),
                            const SizedBox(height: 20),   
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Center(
                      child: Row(
                        
                        children: [
                          const Text(
                            'Have an account? ',
                            style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {
                                 Navigator.push(context, 
                                 MaterialPageRoute(builder: (context) => LoginPage())); // Handle 'sign in' button press
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
                               ],
                             ) 
                          ],
                        ),
                      ),
                    if (!isSignupScreen)
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
                            const SizedBox(height: 20),
                            Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                 
                                  children: [
                                    Checkbox(
                                        value: isRememberMe,
                                        activeColor: Colors.red,
                                        onChanged: (value) {
                                          setState(() {
                                            isRememberMe = !isRememberMe;
                                          });
                                        }),
                                    const Text(
                                      'Remember me',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                TextButton(onPressed: (){},
                             child: const Text('Forgot Password?', 
                             style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                             ),
                             ),

                             ),
                              ],
                            ),
                            const SizedBox(height: 40),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, 
                                  MaterialPageRoute(builder: (context) => HomePage1(),));
                                }, child: const Text('Login')),
                             const SizedBox(height: 20),   
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Center(
                      child: Row(
                        
                        children: [
                          const Text(
                            'Dont Have an account? ',
                            style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {
                                  // Handle 'sign in' button press
                            },
                            child: const Text(
                                  'Sign Up',
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
                               ],
                             )    
                          ],
                          
                        ),
                        
                      ),
                    const SizedBox(
                      height: 10,
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

void main() {
  runApp(const MaterialApp(
    home: LoginPage(),
  ));
}
