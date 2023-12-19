import 'package:fitbites/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme/para_text.dart';
import '../../theme/title_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.yellowColor,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("My Profile"),
              ],
            ),
            pinned: true,
            backgroundColor: ThemeColors.yellowColor,
          ),
          SliverToBoxAdapter(
              child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width:80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: ThemeColors.goldColor,
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(image: AssetImage("assets/images/plate-8.jpg"))
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TitleText(
                                text: 'Aman',
                                size: 25,
                              ),
                              ParaText(text: 'balooni.aman1991@gmail.com', size: 16, color: ThemeColors.paraColor,),
                              ParaText(text: 'Edit profile', size: 16, color: ThemeColors.redColor,),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ))),
        ],
      ),
    );
  }
}
