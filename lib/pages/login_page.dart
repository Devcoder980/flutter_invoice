import 'package:flutter/material.dart';
import 'package:responsive/constants.dart';
import 'package:responsive/responsive/destop_scafford.dart';
import 'package:responsive/responsive/mobila_scafford.dart';
import 'package:responsive/responsive/responsive_layout.dart';
import 'package:responsive/responsive/tablet_scafford.dart';
import 'dart:convert';

import '../components/my_button.dart';
import '../components/my_textfield.dart';
// import 'package:http/http.dart' as http;

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  // void signUserIn(BuildContext context) async {
  //   final username = usernameController.text;
  //   final password = passwordController.text;

  //   // Create a JSON object with username and password
  //   final body = jsonEncode({'email': username, 'password': password});

  //   try {
  //     final response = await http.post(
  //       Uri.parse(
  //           'https://jobmanagementw.onrender.com/api/user/login'), // Replace with your API endpoint
  //       headers: {'Content-Type': 'application/json'},
  //       body: body,
  //     );
  //     print(response.body);
  //     print(response.statusCode);
  //     if (response.statusCode == 200) {
  //       // Sign in successful, handle the response accordingly
  //       // For example, navigate to the home screen
  //       // ignore: use_build_context_synchronously
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(
  //           content: Text('Sign-in Succesfully'),
  //         ),
  //       );
  //       // Navigator.pushReplacementNamed(context, '/home');
  //     } else {
  //       // Sign in failed, handle the error
  //       // For example, display an error message
  //       // ignore: use_build_context_synchronously
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(
  //           content: Text('Sign-in failed. Please try again.'),
  //         ),
  //       );
  //     }
  //   } catch (error) {
  //     // Error occurred while making the request
  //     // Handle the error appropriately
  //     print('Error: $error');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 90),
                // logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(height: 40),

                // Hello Again
                const Text(
                  'HELLO AGAIN',
                  style: TextStyle(
                    color: Colors.black,
                    wordSpacing: -10,
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),

                const SizedBox(height: 20),

                //welcome back
                Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                // username textfileld
                MyTextField(
                  controller: usernameController,
                  hintText: "Username",
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forget Password?",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                // sign in button
                MyButton(
                    onTap: () => {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const ResponsiveLayout(
                                    mobialScaffold: MobileScaffold(),
                                    tabletScaffold: TabletScaffold(),
                                    destopScaffold: DestopScaffold()),
                              )),
                        })
                // const SizedBox(height: 50),
                //
              ]),
        ),
      ),
    );
  }
}
