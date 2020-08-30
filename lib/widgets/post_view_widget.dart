import 'package:flutter/material.dart';
import 'package:instagramuiclone/data/userData.dart';

class PostView extends StatefulWidget {
  @override
  _PostViewState createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  Icon favIcon = Icon(Icons.favorite_border);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.53,
              width: MediaQuery.of(context).size.width,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Row(
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
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(userImages[index]),
                              radius: 20,
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                userNames[index],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "London",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                          Icon(Icons.menu)
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Card(
                        child: Image.network(
                          postImages[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.fromSTEB(20, 10, 10, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Nature...',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                          const Text(
                            '20 likes',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsetsDirectional.fromSTEB(20, 10, 10, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                icon: favIcon,
                                color: Colors.black,
                                onPressed: () {
                                  setState(() {
                                    favIcon =
                                        Icon(Icons.favorite, color: Colors.red);
                                  });
                                },
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.chat_bubble_outline,
                                  color: Colors.black),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.send,
                                color: Colors.black,
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.bookmark_border,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
