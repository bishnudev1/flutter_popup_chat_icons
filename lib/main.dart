import 'package:flutter/material.dart';
import 'dart:developer';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Popup Chat Icons Package',
      home: PopUpChatIcons(),
    );
  }
}

class PopUpChatIcons extends StatefulWidget {
  const PopUpChatIcons({super.key});

  @override
  State<PopUpChatIcons> createState() => _PopUpChatIconsState();
}

class _PopUpChatIconsState extends State<PopUpChatIcons> {
  bool showPopIcons = false;

  List<Text> icons = [
    const Text(
      '😆',
      style: TextStyle(fontSize: 20),
    ),
    const Text(
      '😡',
      style: TextStyle(fontSize: 20),
    ),
    const Text(
      '🤔',
      style: TextStyle(fontSize: 20),
    ),
    const Text(
      '😂',
      style: TextStyle(fontSize: 20),
    ),
    const Text(
      '😇',
      style: TextStyle(fontSize: 20),
    )
  ];

  //const PopUpMessage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onLongPress: () {
            showPopIcons = !showPopIcons;
            setState(() {});
          },
          child: SizedBox(
            height: 300,
            width: double.infinity,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                const ListTile(
                  title: Text("Bishnudev Khutia"),
                  subtitle: Text("Hey it's been a long. How are you ?"),
                ),
                showPopIcons
                    ? Positioned(
                        top: -12,
                        left: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              5,
                              (index) => InkWell(
                                  onTap: () {
                                    setState(() {
                                      showPopIcons = !showPopIcons;
                                    });
                                    log(index.toString());
                                  },
                                  child: icons[index])),
                        ),
                      )
                    : Container()
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
