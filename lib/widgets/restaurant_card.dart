import 'package:fitbites/utils/image_constant.dart';
import 'package:fitbites/widgets/tags.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantCardWidget extends StatelessWidget {
  const RestaurantCardWidget({
    super.key, this.image, this.title, this.rating, this.heading, this.subtitle, this.subtitle1, this.price, this.offer, this.discount,
  });
  final String? image;
  final String? title;
  final String? rating;
  final String? heading;
  final String? subtitle;
  final String? subtitle1;
  final String? price;
  final String? offer;
  final String? discount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      height: 300,
      width: 367,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey, // Border color
            width: 1.0, // Border width
          ),
        borderRadius: BorderRadius.circular(23)
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Container
          SizedBox(
            child: Column(
              children: [
                 Container(
                   width: 367,
                   height: 180,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(23), topRight: Radius.circular(23)),
                      image: DecorationImage(image: AssetImage(image!),
                      fit: BoxFit.cover),
                    ),
                   child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTagWidget(
                                width: 100,
                                height: 30,
                                text: title!,
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: 50,
                                border: 1,
                              ),
                              Expanded(child: Container()),
                              Container(
                                width: 55,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xff267E3E),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text(rating!, style: TextStyle(color: Colors.white),)),
                              )
                            ],
                          ),
                        )
                      ],
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.all(10),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(heading!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                       const SizedBox(height: 5,),
                       Row(
                         children: [
                           Container(
                             child: Row(
                               children: [
                                 Text(subtitle!, style: TextStyle(color: Color(0xff878787)),),
                                 Container(
                                   margin: EdgeInsets.only(left: 10, right: 10),
                                   width: 5,
                                   height: 5,
                                   decoration: BoxDecoration(
                                     color: Colors.grey,
                                     borderRadius: BorderRadius.circular(50),
                                   ),
                                 ),
                                 Text(subtitle1!, style: TextStyle(color: Color(0xff878787)),),
                                 Container(
                                   margin: EdgeInsets.only(left: 10, right: 10),
                                   width: 5,
                                   height: 5,
                                   decoration: BoxDecoration(
                                     color: Colors.grey,
                                     borderRadius: BorderRadius.circular(50),
                                   ),
                                 ),
                                 Text(price!, style: TextStyle(color: Color(0xff878787)),),
                               ],
                             ),
                           ),
                         ],
                       ),
                       const SizedBox(height: 5,),
                       Row(
                         children: [
                           Text(offer!, style: TextStyle(color: Color(0xff267E3E)),),
                           Expanded(child: Container()),
                           Row(
                             children: [
                               Container(
                                 margin: EdgeInsets.only(right: 5),
                                 width: 30,
                                 height: 30,
                                 decoration: BoxDecoration(
                                   color: Color(0xffDF2100),
                                   borderRadius: BorderRadius.circular(50),
                                 ),
                                 child: Center(child: Text('%', style: TextStyle(color: Colors.white),)),
                               ),
                               Text(discount!, style: TextStyle(color: Color(0xffDF2100), fontSize: 12),)
                             ],
                           )
                         ],
                       )
                     ],
                   ),
                 )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

