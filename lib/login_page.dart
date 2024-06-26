import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weigh_master_admin/constants/custom_colors.dart';
import 'package:weigh_master_admin/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObscured = false;

  void passView() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundGreen,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 500,
              height: 500,
              child: Padding(
                padding: const EdgeInsets.all(60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Weigh Master",
                      style: GoogleFonts.abhayaLibre(
                        color: Colors.black,
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 500,
                height: 500,
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(CupertinoIcons.mail),
                            fillColor: CustomColors.backgroundFill,
                            filled: true,
                            hintText: "Email",
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: passwordController,
                        obscureText: isObscured,
                        decoration: InputDecoration(
                            fillColor: CustomColors.backgroundFill,
                            filled: true,
                            hintText: "Password",
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: passView,
                                icon: Icon(isObscured
                                    ? CupertinoIcons.eye_slash
                                    : CupertinoIcons.eye))),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: CustomColors.backgroundBlue),
                          child: TextButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  FirebaseAuth.instance
                                      .signInWithEmailAndPassword(
                                          email: emailController.text,
                                          password: passwordController.text)
                                      .then((value) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomePage()));
                                  });
                                }
                              },
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 60.0, vertical: 20.0),
                                child: Text(
                                  "Sign in",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ))),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
