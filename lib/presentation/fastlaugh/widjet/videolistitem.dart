import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflics/core/colours/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    backgroundColor: kblack.withOpacity(.5),
                    radius: 30,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.volume_off,
                          size: 30,
                        ))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://www.themoviedb.org/t/p/w440_and_h660_face/ryKwNlAfDXu0do6SX9h4G9Si1kG.jpg'),
                      ),
                    ),
                    VideoActionwidjet(icon: Icons.emoji_emotions, title: 'LOL'),
                    VideoActionwidjet(icon: Icons.add, title: 'My List'),
                    VideoActionwidjet(icon: Icons.share, title: 'Share'),
                    VideoActionwidjet(icon: Icons.play_arrow, title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionwidjet extends StatelessWidget {
  VideoActionwidjet({required this.icon, required this.title, super.key});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Icon(
            icon,
            color: kwhite,
            size: 30,
          ),
          Text(
            title,
            style: TextStyle(color: kwhite, fontSize: 16),
          )
        ],
      ),
    );
  }
}
