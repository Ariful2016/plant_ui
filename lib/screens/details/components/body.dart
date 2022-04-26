import 'package:flutter/material.dart';


import '../../../constants.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children:[
          ImageAndIcons(size: size),
          const TitleAndPrice(title: "Angelica", country: "America", price: 350),
          const SizedBox(height: kDefaultPadding),
          Row(
            children:[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){},
                  child: const Center(child: Text("Description",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor, fontSize: 16),)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
