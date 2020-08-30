import 'package:flutter/material.dart';
import 'package:instagramuiclone/widgets/post_view_widget.dart';
import 'package:instagramuiclone/widgets/story_view_widget.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [StoryView(), PostView()],
    );
  }
}
