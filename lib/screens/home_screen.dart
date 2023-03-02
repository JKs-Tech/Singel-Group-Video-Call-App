import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:meet_me/screens/join_mettin.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:meet_me/screens/start_metting.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText("Start or Join A Video Call",
                        textStyle: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                        speed: const Duration(microseconds: 90000)),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Image.asset('assets/images/home.jpg'),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                    width: 280,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(StartScreen());
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 61, 51, 252)),
                        child: const Text(
                          "Start video call",
                          style: TextStyle(fontSize: 17),
                        ))),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 280,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const JoinScreen());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 61, 51, 252)),
                    child: const Text(
                      "Join Video call",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
