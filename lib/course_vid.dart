import 'package:education_app/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class course_vid extends StatefulWidget {
  const course_vid({Key? key}) : super(key: key);

  @override
  State<course_vid> createState() => _course_vidState();
}

class _course_vidState extends State<course_vid> {
  late YoutubePlayerController _controller;
  late YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;

  final List<String> _ids = [
    //'fis26HvvDII',
    'qK0QNA0sMGc',
    'ntLJmHOJ0M'
    'A14BLDzNy2k',

    //'4AoFA19gbLo',
    //'nPt8bK2gbaU',
    //'gQDByCdjUXw',
    //'iLnmTe5Q2Qw',
    //'_WoCV4c6XOE',
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: _ids.first,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        captionLanguage: "en-us",
        controlsVisibleAtStart: true,
        forceHD: true,
        hideControls: false,
        hideThumbnail: false,
        disableDragSeek: false,
        mute: false,
        showLiveFullscreenButton: true,
        enableCaption: true,
        loop: true,
      ),
    );
    _videoMetaData = const YoutubeMetaData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            topActions: <Widget>[
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: Text(
                  _controller.metadata.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
            onReady: () {
              _isPlayerReady = true;
            },
            onEnded: (data) {
              _controller
                  .load(_ids[(_ids.indexOf(data.videoId) + 1) % _ids.length]);
            },
          ),
          builder: (context, player) {
            return Scaffold(
              appBar: AppBar(),
              body: Column(
                children: [
                  player,
                  RichText(
                      text: TextSpan(
                    text: 'Title :',
                    style: const TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [

                      TextSpan(
                        text: _videoMetaData.title,
                        style: const TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextSpan(
                        text: "\n Duration : ${_controller.metadata.duration}",
                        style: const TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ))
                ],
              ),
            );
          }),
    ));
  }
}
