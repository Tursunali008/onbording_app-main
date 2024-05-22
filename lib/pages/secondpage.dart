import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:onbording_app/pages/createAcount.dart';

import 'package:onbording_app/pages/onbording.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  PageController pageController = PageController();
  int curentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 20),
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    SizedBox(
                      height: 420,
                      width: double.infinity,
                      child: PageView(
                        controller: pageController,
                        onPageChanged: (value) {
                          curentpage = value;
                          setState(() {});
                        },
                        children: [
                          OnBording("onbording1"),
                          OnBording("onbording2"),
                          OnBording("onbording3"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          curentpage == 0
                              ? const Active()
                              : const CircleAvatar(
                                  radius: 10,
                                ),
                          curentpage == 1
                              ? const Active()
                              : const CircleAvatar(
                                  radius: 10,
                                ),
                          curentpage == 2
                              ? const Active()
                              : const CircleAvatar(
                                  radius: 10,
                                )
                        ],
                      ),
                    ),
                  ],
                )),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const Text(
                    "Set Your Schedule",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 35,
                    ),
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
                  const Gap(25),
                  InkWell(
                    onTap: () {
                      curentpage++;
                      if (curentpage == 3) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreatePage()),
                        );
                      }
                      pageController.nextPage(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.linear);
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: const LinearGradient(
                                colors: [Colors.blue, Color(0xff4554F1)])),
                        child: const Text(
                          "Get Started",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Active extends StatelessWidget {
  const Active({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 18,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.blue),
    );
  }
}
