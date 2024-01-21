import 'package:flutter/material.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image(
        height: 150,
        image: AssetImage(dark
            ? "assets/logos/lightSplashLogo.jpg"
            : "assets/logos/darkSplashlogo.jpeg"),
      ),
      const SizedBox(height: 5),
      Text(
        "Welcome back",
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      const SizedBox(height: 5),
      Text("Discover Limitless Choices and UnMatched Convenience.",
          style: Theme.of(context).textTheme.bodyMedium),
    ]);
  }
}
