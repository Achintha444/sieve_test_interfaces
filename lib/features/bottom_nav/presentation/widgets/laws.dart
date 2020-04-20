import 'package:flutter/material.dart';

import '../../../../core/Constants/app_bar.dart';
import '../../../../core/Constants/drawer.dart';

class Laws extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerDesign(),
      appBar: AppBarDesign(
        title: 'Privacy Laws',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //! NEWS , TIPS , LAWS CARD
            _lawsCard(
              'GDPR',
              'General Data Protection Regulation - desc.',
              context,
            ),
           _lawsCard(
              'GDPR',
              'General Data Protection Regulation - desc.',
              context,
            ),

            _lawsCard(
              'GDPR',
              'General Data Protection Regulation - desc.',
              context,
            ),

            _lawsCard(
              'GDPR',
              'General Data Protection Regulation - desc.',
              context,
            ),
          ],
        ),
      ),
    );
  }

  Container _lawsCard(String title, String news, BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
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
                    color: Theme.of(context).accentColor, fontSize: 13),
              )
            ],
          ),
        ),
      ),
    );
  }
}
