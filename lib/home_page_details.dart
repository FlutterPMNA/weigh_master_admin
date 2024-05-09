import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weigh_master_admin/constants/custom_side_bar.dart';

class HomePageDetails extends StatefulWidget {
  const HomePageDetails({super.key});

  @override
  State<HomePageDetails> createState() => _HomePageDetailsState();
}

class _HomePageDetailsState extends State<HomePageDetails> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomSideBar(icon: CupertinoIcons.shopping_cart, onClicked: (){}),
            CustomSideBar(icon: Icons.message, onClicked: (){}),
            CustomSideBar(icon: Icons.image, onClicked: (){})
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.3,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemCount: 18,
              itemBuilder: (context, index){

                double width= MediaQuery.of(context).size.width;
                double height= MediaQuery.of(context).size.height;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height/3,
                    width: width/3,
                    color: Colors.blueGrey,
                  ),
                );
              }),
        )
      ],
    );
  }
}
