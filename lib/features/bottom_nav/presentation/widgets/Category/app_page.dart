import 'package:flutter/material.dart';

import 'privacy_policy.dart';

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GOOGLE'.toUpperCase(),
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 25,
            letterSpacing: 2,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        //* user_image
        actions: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: FadeInImage.assetNetwork(
              placeholder: 'icons/user_placeholder.png',
              image: 'https://i.imgur.com/BoN9kdC.png',
              fit: BoxFit.fill,
              width: 50,
              height: 50,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: MediaQuery.of(context).size / 4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(4),
                  //   border: Border.all(
                  //     color: Theme.of(context).accentColor,
                  //   ),
                  //   color: Theme.of(context).accentColor.withOpacity(0.1),
                  // ),
                  height: MediaQuery.of(context).size.height / 5.5,
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8),
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(4),
                        //   border: Border.all(
                        //     color: Theme.of(context).accentColor,
                        //   ),
                        //   color: Theme.of(context).accentColor.withOpacity(0.1),
                        // ),
                        child: Image(
                          image: AssetImage('icons/g.png'),
                          height: 80,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'One Of the Biggest Social Media Platform',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 18,
                            letterSpacing: 1,
                            wordSpacing: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Simplifed Privacy Policy'.toUpperCase(),
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      letterSpacing: 1.3,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: PrivacyPolicy(),
        ),
      ),
    );
  }
}
