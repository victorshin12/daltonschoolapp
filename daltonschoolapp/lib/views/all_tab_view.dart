import 'package:daltonschoolapp/constants.dart';
import 'package:daltonschoolapp/models/news.dart';
import 'package:daltonschoolapp/widgets/primary_card.dart';
import 'package:daltonschoolapp/widgets/secondary_card.dart';
import 'package:flutter/material.dart';

class AllTabView extends StatefulWidget {
  @override
  _AllTabViewState createState() => _AllTabViewState();
}

class _AllTabViewState extends State<AllTabView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: [
        SizedBox(height: 3),

        //lunch

        Align(
          child: Container(
            width: 360,
            height: 187,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: kGrey1),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Text(
                                "Korean",
                                style: TextStyle(
                                    color: Color(0xFF04103E), fontSize: 18),
                              ),
                            ),
                            SizedBox(height: 5,),
                            
                            Image.asset(
                              'assets/lunch_ex_1.jpg',
                              width: 80,
                              height: 80,
                            ),

                            SizedBox(height: 10,),
                            Text(
                              "Pork & Kimchi Stew",
                              style: TextStyle(
                                  color: Color(0xFF04103E), fontSize: 14),
                            ),
                            Text(
                              "돈육김치찌개",
                              style: TextStyle(
                                  color: Color(0xFF04103E), fontSize: 14),
                            ),
                          ],
                        ),
                      ),

                      VerticalDivider(
                        width: 1,
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 135),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Lunch",
                              style: TextStyle(
                                  color: Color(0xFF04103E), fontSize: 20),
                            ),
                            //Text(
                            //  "Lunch",
                            //  style: TextStyle(
                            //      color: Color(0xFF04103E), fontSize: 18),
                            //),
                          ],
                        ),
                      ),


                      VerticalDivider(
                        width: 1,
                      ),


                      Expanded(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Text(
                                "Int'l",
                                style: TextStyle(
                                    color: Color(0xFF04103E), fontSize: 18),
                              ),
                            ),
                            SizedBox(height: 5,),
                            
                            Image.asset(
                              'assets/lunch_ex_2.jpg',
                              width: 80,
                              height: 80,
                            ),

                            SizedBox(height: 10,),
                            Text(
                              "Omelet Fried Rice",
                              style: TextStyle(
                                  color: Color(0xFF04103E), fontSize: 14),
                            ),
                            Text(
                              "오므라이스",
                              style: TextStyle(
                                  color: Color(0xFF04103E), fontSize: 14),
                            ),
                          ],
                        ),
                      ),





                      
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        SizedBox(height: 15),

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
                onTap: () {
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
        ),
        SizedBox(height: 15),
      ],
    ));
  }
}
