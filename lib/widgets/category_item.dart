import 'package:flutter/material.dart';

import '../screens/category_diseases_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;

  CategoryItem(this.id, this.title, this.image);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryTestScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.network(
              image,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 20,
            right: 10,
            child: Container(
              width: 300,
              color: Colors.black54,
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                ),
                softWrap: true,
                overflow: TextOverflow.fade,
              ),
            ),
          )
        ],
      ),
    );
  }
}
