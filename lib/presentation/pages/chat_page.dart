import 'package:flutter/material.dart';
import 'package:hack_22/presentation/global_styles/design_system/styles.dart';

class ChatPage extends StatelessWidget {
  ChatPage({Key? key}) : super(key: key);
  final TextEditingController textController = TextEditingController();

  Widget hospitalMessage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 12.0,
                height: 12.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF9AB8FE),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Container(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF9AB8FE),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 16.0,
                    ),
                    child: Text(
                      "What's the emergency?",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget userMessage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF4B7BEC),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 16.0,
                    ),
                    child: Text(
                      "What's the emergency?",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 12.0,
                height: 12.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF4B7BEC),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: PreferredSize(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                offset: Offset(0, 1.0),
                blurRadius: 12.0,
              )
            ],
          ),
          child: AppBar(
            centerTitle: false,
            backgroundColor: Colors.white,
            elevation: 1,
            shadowColor: Colors.white,
            title: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                "Hospital",
                style: TextStyle(
                  color: black,
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        preferredSize: const Size.fromHeight(kToolbarHeight + 5.0),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Stack(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFE9E9E9),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 7.0,
                              vertical: 4.0,
                            ),
                            child: Text(
                              "12:02PM",
                              style: TextStyle(
                                color: Color(0xFFA4A4A4),
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    hospitalMessage(),
                    const SizedBox(height: 16.0),
                    userMessage(),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: const Color(0xFFF6F6F6),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 19.0,
                          left: 19.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 14.0,
                                  ),
                                  child: TextFormField(
                                    controller: textController,
                                    autocorrect: false,
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.all(0.0),
                                      labelText: "Type...",
                                      labelStyle: TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0xFFA4A4A4),
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // Second child is button
                            Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              child: IconButton(
                                icon: const Icon(Icons.add),
                                iconSize: 24.0,
                                color: const Color(0xFF4B7BEC),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
