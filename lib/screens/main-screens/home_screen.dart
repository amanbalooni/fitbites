import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import '../../widgets/custom_carousel.dart';
import '../../widgets/custom_searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(
            FluentSystemIcons.ic_fluent_location_filled,
            color: Color(0xffDF2100),
          ),
          title: Transform.translate(
            offset: const Offset(-20, 0),
            child: const Text(
              'Omaxe Twin Towers(Noida, U.P.)',
              style: TextStyle(fontSize: 14),
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xffDF2100),
                borderRadius: BorderRadius.circular(40),
              ),
            )
          ],
        ),
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          //background image
          Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          ListView(
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: CustomSearch(
                    labelText: 'Dishes, groceries & restaurants',
                    icon: Icons.search,
                  )),
              const SizedBox(
                height: 25,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                      left: 20,
                    ),
                    child: SizedBox(
                      width: 85,
                      child: Divider(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 712),
                    child: Text(
                      "WHAT’S ON YOUR MIND?",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                      right: 20,
                    ),
                    child: SizedBox(
                      width: 85,
                      child: Divider(
                        endIndent: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]));
  }
}



