import 'package:flutter/material.dart';

import '../../../../core/Constants/app_bar.dart';
import '../../../../core/Constants/drawer.dart';

class NewsFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerDesign(),
      appBar: AppBarDesign(
        title: 'News Feed',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //! NEWS , TIPS , LAWS CARD
            _newsFeedNewsCard(
              'Uber Data Breach',
              'There are various avenues in the field of Information Technology or more commonly known as IT. Cloud Computing, IoT, Web Development are few of those avenues under IT. But today I am going to talk about an avenue which is quite different than many of its neighbouring avenues, it is ',
              context,
            ),
            _newsFeedNewsCard(
              'Uber Data Breach',
              'There are various avenues in the field of Information Technology or more commonly known as IT. Cloud Computing, IoT, Web Development are few of those avenues under IT. But today I am going to talk about an avenue which is quite different than many of its neighbouring avenues, it is ',
              context,
            ),
            //! Polcy Updated Card
            _newsFeedUpdateContainer('icons/g.png', context),

            _newsFeedNewsCard(
              'Uber Data Breach',
              'There are various avenues in the field of Information Technology or more commonly known as IT. Cloud Computing, IoT, Web Development are few of those avenues under IT. But today I am going to talk about an avenue which is quite different than many of its neighbouring avenues, it is ',
              context,
            ),
            _newsFeedUpdateContainer('icons/g.png', context),

            _newsFeedNewsCard(
              'Uber Data Breach',
              'There are various avenues in the field of Information Technology or more commonly known as IT. Cloud Computing, IoT, Web Development are few of those avenues under IT. But today I am going to talk about an avenue which is quite different than many of its neighbouring avenues, it is ',
              context,
            ),
          ],
        ),
      ),
    );
  }

  Container _newsFeedUpdateContainer(
      String imageLocation, BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Policy Updated',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.4,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Image(
                    alignment: Alignment.centerRight,
                    image: AssetImage(
                      imageLocation,
                    ),
                    height: 60,
                    width: 60,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _newsFeedNewsCard(String title, String news, BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Card(
        borderOnForeground: true,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 7,
                  bottom: 7,
                ),
              ),
              Text(
                news,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                ),
              ),
              Text(
                'Read the Full Story Here',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: 13
                ),
              )
            ],
          ),
        ),
      ),
    );
  
  }

}
