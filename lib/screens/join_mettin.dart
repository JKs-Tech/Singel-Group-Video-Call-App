import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:meet_me/screens/video_call.dart';

class JoinScreen extends StatefulWidget {
  const JoinScreen({super.key});

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

class _JoinScreenState extends State<JoinScreen> {
  final fromKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
                backgroundImage: AssetImage("assets/images/home2.jpg"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Enter meeting ID below",
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
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'(^(?:[+0]9)?[0-9]{10}$)').hasMatch(value)) {
                      return "Enter Valid Mobile Number";
                    } else {
                      return null;
                    }
                  },
                  controller: _controller,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Your meeting ID"),
                ),
              ),
            ),
            SizedBox(
              width: 180,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  if (fromKey.currentState!.validate()) {
                    Get.to(CallPage(
                      callID: _controller.text,
                    ));
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 61, 51, 252),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                child: const Text(
                  "Join Now",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            // Container(
            //    width: double.infinity,
            //    child: Image.asset("assets/images/call.png"))
          ],
        ),
      )),
    );
  }
}
