import 'package:flutter/material.dart';
import 'package:link_previewer/link_previewer.dart';

import '../../../../core/Constants/app_bar.dart';
import '../../../../core/Constants/drawer.dart';

class Tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerDesign(),
      appBar: AppBarDesign(
        title: 'Privacy Tips',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //* TIPS
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Tips to Protect Your Privacy',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).primaryColor,
                    letterSpacing: 1.3,
                  ),
                ),
              ),
            ),
            //! TIPS CARD
            _tipsCard(
              'Weird Permission - Just Say NO!',
              'If a Flash Light app asks permission to access your location ask yourself WHY?',
              context,
            ),
            _tipsCard(
              'Only Use OFFICAL APP STORES!',
              'Do not install apps from unreliable sources, because to do that you need disable security settings, which are there to keep you and your data safe',
              context,
            ),
            _tipsCard(
              'Weird Permission - Just Say NO!',
              'If a Flash Light app asks permission to access your location ask yourself WHY?',
              context,
            ),
            _tipsCard(
              'Only Use OFFICAL APP STORES!',
              'Do not install apps from unreliable sources, because to do that you need disable security settings, which are there to keep you and your data safe',
              context,
            ),
            _tipsCard(
              'Weird Permission - Just Say NO!',
              'If a Flash Light app asks permission to access your location ask yourself WHY?',
              context,
            ),
            //* More Information
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'For More Information',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).primaryColor,
                    letterSpacing: 1.3,
                  ),
                ),
              ),
            ),

            _visitCard([
              'https://www.cbc.ca/news/technology/protecting-your-privacy-online-how-to-manage-what-you-reveal-1.3920036',
              'https://www.youtube.com/watch?v=QgwSz6PUxKo',
              'https://www.youtube.com/watch?v=xx1AUupLn2w&t=978s'
            ], context),
          ],
        ),
      ),
    );
  }

  Container _tipsCard(String title, String news, BuildContext context) {
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
            ],
          ),
        ),
      ),
    );
  }

  Container _visitCard(List<String> links, BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.7,
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
                'Visit',
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
              //_linkPreveiew(links,context),
              LinkPreviewer(
                link: links[0],
                titleFontSize: 10,
                borderColor: Theme.of(context).accentColor,
                defaultPlaceholderColor: Theme.of(context).accentColor.withOpacity(0.5),
                borderRadius: 4,
                bodyMaxLines: 2,
                bodyTextOverflow: TextOverflow.ellipsis,
                bodyFontSize: 6,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 4,
                  bottom: 4,
                ),
              ),
              LinkPreviewer(
                link: links[1],
                titleFontSize: 10,
                borderColor: Theme.of(context).accentColor,
                placeholder: Container(
                  color: Theme.of(context).accentColor,
                ),
                borderRadius: 4,
                bodyMaxLines: 2,
                defaultPlaceholderColor: Theme.of(context).accentColor.withOpacity(0.5),
                bodyTextOverflow: TextOverflow.ellipsis,
                bodyFontSize: 6,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 4,
                  bottom: 4,
                ),
              ),
              LinkPreviewer(
                link: links[2],
                titleFontSize: 10,
                borderColor: Theme.of(context).accentColor,
                placeholder: Container(
                  color: Theme.of(context).accentColor,
                ),
                borderRadius: 4,
                bodyMaxLines: 2,
                defaultPlaceholderColor: Theme.of(context).accentColor.withOpacity(0.5),
                bodyTextOverflow: TextOverflow.ellipsis,
                bodyFontSize: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Column _linkPreveiew(List<String> links,BuildContext context) {
  //   return Column(
  //     children: <Widget>[
  //       for (String link in links){
  //           LinkPreviewer(
  //             link: link,
  //             titleFontSize: 10,
  //             borderColor: Theme.of(context).accentColor,
  //             placeholder: Container(
  //               color: Theme.of(context).accentColor,
  //             ),
  //             borderRadius: 4,
  //             bodyMaxLines: 2,
  //             bodyTextOverflow: TextOverflow.ellipsis,
  //             bodyFontSize: 6,
  //           ),
  //           Padding(
  //             padding: EdgeInsets.only(
  //               top: 4,
  //               bottom: 4,
  //             ),
  //           ),
  //         }
  //     ],
  //   );
  // }
}
