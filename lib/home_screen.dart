import 'package:flutter/material.dart';
import 'package:test_drive/attorney.dart';
import 'package:test_drive/bottom_bar.dart';
import 'package:test_drive/case_summery.dart';
import 'package:test_drive/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: const BottomBar(),
          appBar: AppBar(
            centerTitle: true,
            leadingWidth: 80,
            scrolledUnderElevation: 0,
            leading: InkWell(
              onTap: () => print("go back"),
              child: const Row(
                children: [
                  Icon(Icons.chevron_left_rounded),
                  Text("Back"),
                ],
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () => print("refresh"),
                  icon: const Icon(Icons.close))
              // GestureDetector(
              //     onTap: () => print("refresh"), child: const Icon(Icons.refresh))
            ],
          ),
          // body: const SingleChildScrollView(
          //   child: Column(
          //     children: [
          //       Header(),
          //       Attorney(),
          //       CaseSummery(),
          //     ],
          //   ),
          // ),
          body: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    const Header(),
                    const Attorney(),
                    Expanded(
                      child: Container(
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.1),
                          // height: 100,
                          child: CaseSummery()),
                    ),
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
