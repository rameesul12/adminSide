import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/sizedBox.dart';
import '../filimadding/filimAdding.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              height: 50,
              child: Text('Admin Home page',style: TextStyle(color: textwhite,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),

          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 30,
                ),
                children:  [
                
                  InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>const FilimAdding(),)),
                    child:const GridviewCard(
                      image: 'assets/images/video-tutorial.png',
                      name: 'Filim Adding',
                    ),
                  ),
                  InkWell(
                 //   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ShowListPage() ,)),
                    child:const GridviewCard(
                      image: 'assets/images/discount-voucher.png',
                      name: 'Vouchers',
                    ),
                  ),
                // const  GridviewCard(
                //     image: 'assets/images/revenue(1).png',
                //     name: 'Revenue',
                //   ),
              
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GridviewCard extends StatelessWidget {
  const GridviewCard({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      width: size.width * 0.2,
      decoration: BoxDecoration(
        color:textFieldBackground,
      //  image: DecorationImage(image: AssetImage(image))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: size.height * 0.1,
            width: size.width * 0.2,
            decoration: BoxDecoration(
              image: DecorationImage(image:AssetImage(image),fit: BoxFit.fill)
            ),
          ),
          sizedH10,
          Text(
            name,
            style: const TextStyle(
              color: colorTextwhite,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
     
    );
  }
}
