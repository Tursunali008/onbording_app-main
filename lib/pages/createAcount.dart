
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:onbording_app/pages/loginpage.dart';
import 'package:onbording_app/pages/regstrated.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 60, 20, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Let's start your Schedule activity",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              textAlign: TextAlign.center,
            ),
            const Gap(20),
            const Text(
              "Quick see your upcoming event, task, conference calls, weather, and more",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const Gap(20),
            Container(
              height: 300,
              width: 400,
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("images/onbording1.png"))),
            ),
            const Gap(5),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const RegstreetePage()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), gradient: const LinearGradient(colors: [Colors.blue, Color(0xff4554F1)])),
                child: const Text(
                  "Create Account",
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
            const Gap(15),
            RichText(
                text: TextSpan(children: [
              const TextSpan(text: "You Have Account ? ", style: TextStyle(color: Colors.grey, fontSize: 18)),
              TextSpan(
                  text: "Log in",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                    },
                  style: const TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ))
            ]))
          ],
        ),
      ),
    );
  }
}
