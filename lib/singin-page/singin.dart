import 'package:flutter/material.dart';
// import 'package:myapp/Home_Page/home_page.dart';

void main() {
  runApp(const SignInPage());
}

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

bool obscureText = true;
bool? isCkecked = false;

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Image(
                  width: 100,
                  image: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/4646/4646577.png")),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Login to Your Account",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              emailTtextField(),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 320,
                height: 60,
                child: TextField(
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      child: obscureText
                          ? const Icon(
                              Icons.visibility_off,
                              color: Colors.black,
                            )
                          : const Icon(
                              Icons.visibility_outlined,
                              color: Colors.black,
                            ),
                    ),
                    hintText: "Enter your password",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 241, 241, 241),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: isCkecked,
                    onChanged: (newBool) {
                      setState(() {
                        isCkecked = newBool;
                      });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  const Text(
                    "Remember me",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 138, 137, 137)),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: 320,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage()),
                    );
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(35))),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  continueWith(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png"),
                  const SizedBox(
                    width: 20,
                  ),
                  continueWith(
                      "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png"),
                  const SizedBox(
                    width: 20,
                  ),
                  continueWith(
                      "https://www.freepnglogos.com/uploads/apple-logo-png/apple-logo-png-dallas-shootings-don-add-are-speech-zones-used-4.png"),
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              signUp(),
            ],
          ),
        ),
      ),
    );
  }
}

emailTtextField() {
  return Container(
    width: 320,
    height: 60,
    child: const TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.email,
          color: Colors.black,
        ),
        hintText: "Enter your email",
        filled: true,
        fillColor: Color.fromARGB(255, 241, 241, 241),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    ),
  );
}

//*********** or continue with
or() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 90,
        height: 1,
        color: const Color.fromARGB(255, 224, 220, 220),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 5, right: 5),
        child: Text("or continue with",
            style: TextStyle(
                fontSize: 16, color: Color.fromARGB(255, 138, 137, 137))),
      ),
      Row(
        children: [
          Container(
            width: 90,
            height: 1,
            color: const Color.fromARGB(255, 224, 220, 220),
          ),
        ],
      ),
    ],
  );
}

// ****** continue with (facebook , google , apple)
continueWith(logo) {
  return Container(
    // padding: EdgeInsets.all(30),
    decoration: BoxDecoration(
      border: Border.all(
        width: 1,
        color: const Color.fromARGB(255, 224, 220, 220),
      ),
      borderRadius: BorderRadius.circular(15),
    ),
    width: 70,
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: NetworkImage(logo),
          width: 25,
          height: 25,
        ),
      ],
    ),
  );
}

// sign up button
signUp() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "Don't have an accoount?",
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
      TextButton(
          onPressed: () {
            print('yes its is working properly');
          },
          child: const Text("Sign up", style: TextStyle(fontSize: 16))),
    ],
  );
}
