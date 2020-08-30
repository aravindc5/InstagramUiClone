import 'package:flutter/material.dart';
import 'package:instagramuiclone/data/userData.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  "https://img.wynk.in/unsafe/90x90/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/package/david-guetta-300x300.png"),
              radius: 40,
            ),
          ),
          const Text(
            'Josh',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
          ),
          const Text(
            'Nature Lover',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w300, fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Text(
                    '25',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                  const Text(
                    'Post',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  const Text(
                    '10',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                  const Text(
                    'Followers',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
              SizedBox(),
              Column(
                children: [
                  const Text(
                    '14',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                  const Text(
                    'Following',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            child: GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 2,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(20, (index) {
                return Image.network(
                  postImages[index],
                  fit: BoxFit.cover,
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
