import 'package:daltonschoolapp/constants.dart';
import 'package:daltonschoolapp/views/all_tab_view.dart';
import 'package:daltonschoolapp/views/athletics_tab_view.dart';
import 'package:daltonschoolapp/views/news_tab_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: Column(
            children: [
              //Padding(
              //  padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
              //  child: ListTile(
              //    //@TODO Change this to school logo front page thing
              //    title: Text(
              //      "Cheongna Dalton School",
              //      textAlign: TextAlign.center,
              //    ),
              //  ),
              //),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: kGrey1,
                    unselectedLabelStyle: kNonActiveTabStyle,
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    indicatorColor: Colors.white,
                    labelStyle: kActiveTabStyle.copyWith(fontSize: 25.0),
                    tabs: [
                      Tab(text: "All"),
                      Tab(text: "News"),
                      Tab(text: "Athletics"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AllTabView(),
            NewsTabView(),
            AthleticsTabView(),
          ],
        ),
      ),
    );
  }
}
