import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagramuiclone/data/userData.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      width: MediaQuery.of(context).size.width,
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) => Card(
          child: Image.network(userImages[index]),
        ),
        staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}
