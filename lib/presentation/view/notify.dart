import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class Notify extends StatelessWidget {
  List<String> notificationName = ['إشعار من التطبيق', 'إشعار من المدرسة'];
  List<String> notificationContent = [
    'هذا نص تجريبي لتجربة المستخدم',
    'بداية الدراسة بعد إجازة منتصف الفصل الثاني'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: notificationName.length,
            itemBuilder: (context, index) => Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Positioned(
                        child: Column(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: circleShapeDecoration,
                        ),
                        Container(
                          color: Colors.blue,
                          width: 1,
                          height: 140,
                        )
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            '15sep : 9:15 am',
                            style: TextStyle(color: Colors.blue),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 100,
                            width: double.infinity,
                            decoration: notifyBodyDecoration,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    notificationName[index],
                                    style: const TextStyle(color: Colors.blue),
                                  ),
                                  Text(notificationContent[index]),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ],
                )),
      )),
    );
  }
}
