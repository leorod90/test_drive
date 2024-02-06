import 'package:flutter/material.dart';
import 'font_styles.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PlatformPadding.getPadding(context),
      child: const SizedBox(
        width: double.infinity,
        height: 150, // Set the desired height here
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "We can fight your ticket!",
              style: FontStyles.heading,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Our SmartWatch algorithm was able to match you with one of the top traffic attorneys in Seattle, Washington.",
              style: FontStyles.body,
            ),
          ],
        ),
      ),
    );
  }
}
