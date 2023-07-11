import 'package:appadmin/core/colors.dart';
import 'package:appadmin/core/sizedBox.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            sizedH10,
            SizedBox(
              height: 50,
              child: TextFormField(
                style:const TextStyle(color: textwhite),
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText:"Search Movie",
                   prefixIcon:Icon(Icons.arrow_back,color: Colors.white,),
                  hintStyle:const TextStyle(color: Colors.white38),
                  filled: true,
                  border: OutlineInputBorder(
                    
                    borderRadius: BorderRadius.circular(15)
                  ),
                  fillColor:Colors.white70 .withOpacity(0.1)
                ),
              ),
            ),
            ListView.builder(
              itemCount: 10,
              
              itemBuilder:(context, index) {
                
                return SearchList();
              }, )
          ],
        ),
      ),
    );
  }
}

class SearchList extends StatelessWidget {
  const SearchList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(Icons.person_2_outlined),
      title: Text("name of movies"),
    );
  }
}