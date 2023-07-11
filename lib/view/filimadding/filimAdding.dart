
import 'package:appadmin/view/searchScreen/search_screen.dart';
import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/sizedBox.dart';

class FilimAdding extends StatelessWidget {
  const FilimAdding({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            sizedH20,
            Text('Movie List',style: TextStyle(color: textwhite,fontSize: 20,fontWeight: FontWeight.bold),),
            sizedH20,
            Flexible(
              child: SizedBox(
                height: size.height*0.4,
                child: ListView.separated(
                  itemCount: 0,
                  separatorBuilder: (context, index) => Divider(color: textFieldBackground),
                  itemBuilder:(context, index) {
                  return InkWell(
                //    onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) =>const ScreenAdding() ,)),
                 //   child: ListFunctions(size,'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4vjKJRcO1LO36JZYMbbjbx421YN.jpg',),
                  );
                }, ),
              ),
            ),
            Container(

              decoration: BoxDecoration(
                color: textFieldBackground,
                border: Border.all(color: textwhite)
              ),
              child: TextButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>const SearchPage(),));
              }, child:Text('Add +',style: TextStyle(color: textwhite),)))
          ],
        ),
      ),
    );
  }

  ListTile ListFunctions(Size size,String image,String Name,Widget navigation) {
    return ListTile(
                    leading:SizedBox(
                      width:size.width*0.1 ,
                      child: Image.network(image)),
                  title: const Text('The Flash',style: TextStyle(color: textwhite),),
                  trailing: ColoredBox(
                    color: Colors.red,
                    child: SizedBox(
                     height: 35,
                      child: TextButton(onPressed: (){
                       
                      },child:const Text('delete',style: TextStyle(color: textwhite),),)))
                  );
  }
}