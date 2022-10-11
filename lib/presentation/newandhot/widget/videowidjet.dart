import 'package:flutter/material.dart';
import 'package:netflics/core/colours/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.red,
          child: Image.network(
            'https://www.themoviedb.org/t/p/w500_and_h282_face/ufMDhdkDCwQNO6aAktQTvwqOfSe.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 10,
          child: CircleAvatar(
              backgroundColor: kblack.withOpacity(.5),
              radius: 22,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.volume_off,
                    size: 30,
                  ))),
        ),
      ],
    );
  }
}
