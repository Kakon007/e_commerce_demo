import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomeAppBar(),
    );
  }
}

class CustomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AnimatedTextKit(
        animatedTexts: [
          RotateAnimatedText(
            'E-Commerce Demo',
            textStyle: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                ),
          ),
          RotateAnimatedText(
            'Connect with us',
            textStyle: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          RotateAnimatedText(
            'Shop with us',
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
        ],
        totalRepeatCount: 4,
        pause: const Duration(milliseconds: 1000),
        displayFullTextOnTap: true,
        stopPauseOnTap: true,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
