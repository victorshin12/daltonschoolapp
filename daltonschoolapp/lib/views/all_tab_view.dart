import 'package:daltonschoolapp/constants.dart';
import 'package:daltonschoolapp/models/news.dart';
import 'package:daltonschoolapp/widgets/primary_card.dart';
import 'package:daltonschoolapp/widgets/secondary_card.dart';
import 'package:flutter/material.dart';

class AllTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            padding: EdgeInsets.only(left: 18),
            child: ListView.builder(
              itemCount: allList.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
              var news = allList[index];
              return InkWell(
                onTap: (){
                  //put it later
                },
                child: Container(
                  margin: EdgeInsets.only(right: 12),
                  child: PrimaryCard(news: news),
                ),
              );
              },
            ),
          ),
          SizedBox(height: 25),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Events", style: kNonActiveTabStyle),
            ),
          ),
          ListView.builder(
            itemCount: recentList.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) {
              var recent = recentList[index];
              return InkWell(
                onTap: () {
                  //put later
                },
                child: Container(
                  width: double.infinity,
                  height: 115.0,
                  margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                  child: SecondaryCard(news: recent),
                ),
              );
            },
          )
        ],
      )
    );
  }
}
