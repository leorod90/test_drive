import 'package:flutter/material.dart';
import 'package:test_drive/font_styles.dart';
import 'package:dotted_border/dotted_border.dart';

final listItem = [
  {'title': "Issue date", 'text': "December 19, 2023"},
  {'title': "License type", 'text': "Standard"},
  {'title': "Court", 'text': "New York, NY 10033"}
];

class CaseSummery extends StatelessWidget {
  const CaseSummery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        // color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        child: Padding(
          padding: PlatformPadding.getPadding(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Case Summary",
                style: FontStyles.heading,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DottedBorder(
                    dashPattern: const [3, 1],
                    color: Theme.of(context).colorScheme.primary,
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(8),
                    padding: const EdgeInsets.all(6),
                    child: SizedBox(
                      height: 70,
                      width: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Uploads",
                            style: FontStyles.heading.copyWith(
                              fontSize: 14,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          Text(
                            "ticket",
                            style: FontStyles.heading.copyWith(
                              fontSize: 14,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          Text(
                            "photo",
                            style: FontStyles.heading.copyWith(
                              fontSize: 14,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: listItem.map((item) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${item['title']}:',
                              style:
                                  FontStyles.body.copyWith(color: Colors.black),
                            ),
                            Text(
                              '${item['text']}',
                              style: FontStyles.body,
                            ),
                            const SizedBox(
                              height: 20,
                            )
                            // Add more Text widgets as needed for other properties
                          ],
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
