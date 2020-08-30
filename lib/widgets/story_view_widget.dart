import 'package:flutter/material.dart';
import 'package:instagramuiclone/data/userData.dart';

class StoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsetsDirectional.fromSTEB(10, 10, 0, 10),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.1,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: new Border.all(
                        color: Colors.red,
                        width: 2.0,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(userImages[index]),
                      radius: 25,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Text(
                    userNames[index],
                    style: TextStyle(fontSize: 12),
                  )
                ],
              );
            }));
  }
}
