import 'package:application/pages/login.dart';
import 'package:flutter/material.dart';

class wellcome extends StatefulWidget {
  const wellcome({super.key});

  @override
  State<wellcome> createState() => _wellcomeState();
}

class _wellcomeState extends State<wellcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Color.fromARGB(255, 255, 255, 255),
              ],
              begin: FractionalOffset(0.0, 1.0),
              end: FractionalOffset(0.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.repeated,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 350,
                // width: 250,
                child: Container(
                  child: Image.network(
                    // <-- SEE HERE
                    'https://media.istockphoto.com/id/1281150061/vector/register-account-submit-access-login-password-username-internet-online-website-concept.jpg?s=612x612&w=0&k=20&c=9HWSuA9IaU4o-CK6fALBS5eaO1ubnsM08EOYwgbwGBo=',
                    width: 250,
                    height: 350,
                  ),
                ),
              ),
              const Text(
                "Let's you in",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 350,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  // controller: ,
                  decoration: const InputDecoration(
                    labelText: "Continue with facebook",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.facebook),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  // controller: ,
                  decoration: const InputDecoration(
                    labelText: "Continue with Google",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.g_mobiledata),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  // controller: ,
                  decoration: const InputDecoration(
                    labelText: "Continue with Apple",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.apple),
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              const Text(
                "or",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Container(
              //   decoration: BoxDecoration(
              //     color: Colors.indigo,
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   height: 50,
              //   width: 270,
              //   child: const Center(
              //     child: Text(
              //       "Sign in with password",
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 20,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: const Text("Sign in with password"))
            ],
          ),
        ),
      ),
    );
  }
}
