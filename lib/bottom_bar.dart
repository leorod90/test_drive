import 'package:flutter/material.dart';
import 'package:test_drive/font_styles.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey[300]!, // Light gray color
            width: 1, // Border width
          ),
        ),
      ),
      width: double.infinity,
      height: 90,
      alignment: Alignment.center,
      child: Padding(
        padding: PlatformPadding.getPadding(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 52,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Total:",
                        style: FontStyles.body.copyWith(fontSize: 18),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        "\$167",
                        style: FontStyles.heading.copyWith(letterSpacing: -1),
                      )
                    ],
                  ),
                  Text(
                    "Quote expires in 29 minutes",
                    style: FontStyles.body.copyWith(fontSize: 12),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Text(
                "Continue",
                style: FontStyles.body.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
