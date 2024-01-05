
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
        body: Column(
      children: [
        SizedBox(height: 200, child: _buildCustomStackWidget()),
        TitleText(text: 'John Williams', size: 18),
        ParaText(
            text: "williamsjohn@gmail.com",
            size: 14,
            color: Colors.grey.withOpacity(0.5)),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
            width: double.infinity,
            height: 70,
            child: _buildMembershipWidget()),
        Expanded(child: _buildStacksRow(),)
      ],
    ));
  }
}

Widget _buildCustomStackWidget() {
  return Stack(
    children: [
      Container(
        color: Colors.white,
      ),
      Opacity(
        opacity: 0.3,
        child: Container(
          height: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/fast-food-pattern.jpg'),
                fit: BoxFit.cover),
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.grey,
              border: Border.all(width: 2, color: ThemeColors.yellowColor),
              image: DecorationImage(
                  image: AssetImage('assets/images/profile-pic.webp'),
                  fit: BoxFit.cover)),
        ),
      )
    ],
  );
}

Widget _buildMembershipWidget() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        color: ThemeColors.goldColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Align(
          alignment: Alignment.center,
          child: Text(
            'Renew Your Gold Membership',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          )),
    ),
  );
}

Widget _buildStacksRow() {
  List<String> list = [
    "Notification",
    "Payments Methods",
    "Favorite Orders",
    "My Orders",
  ];

  // List of corresponding icons for each item
  List<IconData> icons = [
    Icons.notifications,
    Icons.payment,
    Icons.favorite,
    Icons.shopping_cart,
  ];

  return ListView.builder(
    shrinkWrap: false,
    itemCount: list.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          // Perform actions when the item is tapped
          print("Tapped: ${list[index]}");
          // You can add your logic here
        },
        child: Container(
          margin: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 10.0),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            leading: Icon(icons[index]), // Using the custom icon here
            title: Text(list[index]),
            // Other properties like onTap or trailing can be added here if needed
          ),
        ),
      );
    },
  );
}
