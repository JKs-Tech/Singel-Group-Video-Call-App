import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'dart:math' as math;

final String localUserID = math.Random().nextInt(10000).toString();

class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID:
          840154700, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign:
          "1ed82758976b20e822b88868b8a24a27b985729cfef55852397efd4211c18898", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: localUserID,
      userName: 'user_$localUserID',
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.groupVideoCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}


























// import 'package:flutter/material.dart';
// import 'package:agora_uikit/agora_uikit.dart';

// class VideoCall extends StatelessWidget {
//   final AgoraClient _client = AgoraClient(
//     agoraConnectionData: AgoraConnectionData(
//         appId: "8e6f970bd0e54fbdb87007ca10e79ec6",
//         channelName: "meet_me",
//         tempToken:
//             "007eJxTYGg4dzcvKOjMzB+2H3YcuBFm55e096GOuRHzDO1v/pXrBG0VGCxSzdIszQ2SUgxSTU3SklKSLMwNDMyTEw0NUs0tU5PNeOZcTm4IZGQ4acbLwsgAgSA+O0NuampJfG4qAwMA+gwg8Q=="),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: Stack(children: [
//         AgoraVideoViewer(
//           client: _client,
//         ),
//         AgoraVideoButtons(
//           client: _client,
//         )
//       ]),
//     ));
//   }
// }
