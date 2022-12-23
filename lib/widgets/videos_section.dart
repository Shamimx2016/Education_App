import 'package:flutter/material.dart';

class VideosSection extends StatelessWidget {
  List videosList = [
    'Introduction to Flutter',
    'Installing Flutter on Windows',
    'Setup Emuleter on Windows',
    'Creating our Fast App',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videosList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? Color(0xFF674AFE)
                  : Color(0xFF674AFE).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(videosList[index]),
          subtitle: Text("20 min 50 sec"),
        );
      },
    );
  }
}
