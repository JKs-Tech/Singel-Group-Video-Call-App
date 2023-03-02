import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:meet_me/screens/video_call.dart';

class StartScreen extends StatelessWidget {
  final fromKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: fromKey,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: Get.back,
                      child: const Icon(
                        Icons.arrow_back_ios_new_sharp,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  const SizedBox(
                    width: 120,
                    height: 120,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/call.png"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Enter Your Mobile Number To Start Video Call",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'(^(?:[+0]9)?[0-9]{10}$)')
                                  .hasMatch(value)) {
                            // ignore: prefer_const_constructors
                            return "Enter Valid Mobile Number";
                          } else {
                            return null;
                          }
                        },
                        controller: _controller,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter Mobile Number"),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                    height: 40,
                    indent: 20,
                    endIndent: 20,
                  ),
                  OutlinedButton.icon(
                      onPressed: () {
                        if (fromKey.currentState!.validate()) {
                          Get.to(CallPage(
                            callID: _controller.text,
                          ));
                        }
                      },
                      style: OutlinedButton.styleFrom(
                          foregroundColor:
                              const Color.fromARGB(255, 61, 51, 252),
                          fixedSize: const Size(280, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      icon: const Icon(Icons.video_call),
                      label: const Text(
                        "Start Call",
                        style: TextStyle(fontSize: 16),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
