import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:onbording_app/models/databases.dart';
import 'package:onbording_app/pages/homepage.dart';
import 'package:onbording_app/pages/regstrated.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroler = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();
  bool ishide = true;
  bool error = false;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Welcom back",
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    const Gap(10),
                    const Text(
                      "Lets Login to Connect your email",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.grey),
                    ),
                    error
                        ? const Center(
                            child: Text(
                              "email or password is incorrect",
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 255, 0, 0)),
                            ),
                          )
                        : const Text(""),
                    const Gap(10),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            )),
                        hintText: "name@example.com",
                        prefixIcon: const Icon(Icons.email),
                      ),
                      controller: emailcontroler,
                    ),
                    const Gap(20),
                    TextField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(4),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              )),
                          hintText: "**************",
                          prefixIcon: const Icon(Icons.key),
                          suffix: IconButton(
                            onPressed: () {
                              ishide = !ishide;
                              setState(() {});
                            },
                            icon: Icon(ishide == true ? Icons.visibility_off : Icons.visibility),
                          )),
                      controller: passwordcontroler,
                      obscureText: ishide,
                    ),
                    const Gap(5),
                    const Text(
                      "Forget your password ?",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),
                    ),
                    const Gap(25),
                    Center(
                      child: RichText(
                          text: TextSpan(children: [
                        const TextSpan(text: "Don't have an account?", style: TextStyle(color: Colors.grey, fontSize: 18)),
                        TextSpan(
                          text: " Sigin up here",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const RegstreetePage()));
                            },
                          style: const TextStyle(color: Colors.black, fontSize: 18, decoration: TextDecoration.underline),
                        )
                      ])),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        if (checkaccount(email: emailcontroler.text, password: passwordcontroler.text)) {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));
                        } else {
                          error = true;
          
                          setState(() {});
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), gradient: const LinearGradient(colors: [Colors.blue, Color(0xff4554F1)])),
                        child: const Text(
                          "Log in",
                          style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    const Gap(10),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xffF5F5F5)),
                          child: const Padding(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.apple,
                                ),
                                Gap(5),
                                Text(
                                  "Apple",
                                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        )),
                        const Gap(25),
                        Expanded(
                            child: Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xffF5F5F5)),
                          child: const Padding(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  MaterialCommunityIcons.google,
                                  color: Colors.blue,
                                ),
                                Gap(5),
                                Text(
                                  "Google",
                                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        ))
                      ],
                    ),
                    const Gap(10),
                    const Text(
                      "By continuing. you aggre to Loana's",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),
                    ),
                    const Gap(5),
                    Center(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                          text: "Terms of Use ",
                          style: TextStyle(color: Colors.black, fontSize: 15, decoration: TextDecoration.underline),
                        ),
                        TextSpan(text: "&", style: TextStyle(color: Colors.grey, fontSize: 15)),
                        TextSpan(
                          text: " Privacy Policy",
                          style: TextStyle(color: Colors.black, fontSize: 15, decoration: TextDecoration.underline),
                        )
                      ])),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }

  bool checkaccount({required String email, required String password}) {
    bool isfind = false;
    Databases.users.forEach((user) {
      if (user["email"] == email && user["password"] == password) {
        isfind = true;
      }
    });

    if (isfind) {
      return true;
    } else {
      return false;
    }
  }
}
