import 'package:flutter/material.dart';

class DrawerDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //* Close Button
            Align(
              alignment: Alignment.lerp(
                  Alignment.centerRight, Alignment.centerLeft, 0.10),
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  size: 40,
                  color: Theme.of(context).primaryColor.withOpacity(0.4),
                ),
                onPressed: () {
                  _closeDrawer(context);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
            ),

            //* Image
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                    right: 8,
                  ),
                  child: ClipRRect(
                    key: Key('user_image'),
                    borderRadius: BorderRadius.circular(50.0),
                    child: FadeInImage.assetNetwork(
                      placeholder: 'icons/user_placeholder.png',
                      image: 'https://i.imgur.com/BoN9kdC.png',
                      fit: BoxFit.fill,
                      width: 70,
                      height: 70,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5,
                bottom: 5,
              ),
            ),
            //* Email
            Align(
              alignment: AlignmentGeometry.lerp(
                  Alignment.centerLeft, Alignment.center, 0.4),
              key: Key('user_email'),
              child: Text(
                'achinthaisuru17@cse.mrt.ac.lk',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Divider(
              thickness: 2,
              color: Theme.of(context).primaryColor.withOpacity(0.2),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
            ),
            //* Suggestion
            _suggAndLogout(
              context,
              'suggestions',
              Icons.flag,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
            ),
            //* Logout
            _suggAndLogout(
              context,
              'logout',
              Icons.do_not_disturb_on,
            ),
          ],
        ),
      ),
    );
  }

  void _closeDrawer(BuildContext context) {
    Navigator.pop(context);
  }

  Row _suggAndLogout(BuildContext context, String title, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Theme.of(context).primaryColor,
          size: 45,
        ),
        Padding(
          padding: EdgeInsets.only(left: 5, right: 5),
        ),
        Text(
          title.toUpperCase(),
          style: TextStyle(
            fontSize: 23,
            letterSpacing: 1.5,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
