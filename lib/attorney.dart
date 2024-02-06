import 'package:flutter/material.dart';
import 'package:test_drive/font_styles.dart';

const innerSize = 80.0;

class Attorney extends StatefulWidget {
  const Attorney({
    super.key,
  });

  @override
  State<Attorney> createState() => _AttorneyState();
}

class _AttorneyState extends State<Attorney> {
  int successRate = 0;

  @override
  void initState() {
    super.initState();
    getAPI();
  }

  void getAPI() {
    setState(() {
      successRate = 97;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      alignment: Alignment.center,
      color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
      child: Padding(
        padding: PlatformPadding.getPadding(context),
        child: SizedBox(
          height: 80,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    width: innerSize,
                    height: innerSize,
                    child: Image.network(
                      'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?size=626&ext=jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book now to have the attorney handle your case",
                      style: FontStyles.body.copyWith(color: Colors.black),
                    ),
                    Text(
                      "$successRate% success rates",
                      style: FontStyles.body.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.8),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
