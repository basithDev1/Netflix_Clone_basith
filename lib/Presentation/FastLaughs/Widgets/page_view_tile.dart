import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Core/colors.dart';
import 'package:netflix/application/Fast_Laughf/fast_laughf_bloc.dart';

import 'package:video_player/video_player.dart';

final List<String> dummyVideoUrl = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
];

class PageViewTile extends StatelessWidget {
  final String imageUrl;
  final int index;
  final String moviename;

  PageViewTile({
    super.key,
    required this.index,
    required this.imageUrl,
    required this.moviename,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: VideoPlayerScreen(
            videoUrl: dummyVideoUrl[index % dummyVideoUrl.length],
            onStateChanged: (bool isPlaying) {},
          ),
        ),

        // Container(
        //   color: Colors.accents[index % Colors.accents.length],
        // ),
        Align(
          //alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(195, 0, 0, 0),
                  radius: 30,
                  child: Icon(
                    Icons.volume_off,
                    color: kwhitecolor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 65),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(imageUrl),
                        backgroundColor: kblackcolor,
                        radius: 30,
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: videoLikeNotifier,
                      builder: (BuildContext ctx, Set<int> newLikevideoId,
                          Widget? _) {
                        final id = index;

                        if (newLikevideoId.contains(id)) {
                          return GestureDetector(
                            onTap: () {
                              BlocProvider.of<FastLaughfBloc>(context).add(
                                  FastLaughfEvent.dislikedVideoEvent(
                                      index: index));
                              // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                              videoLikeNotifier.notifyListeners();
                            },
                            child: const PageViewTileActions(
                              title: 'DisLike',
                              icon: Icons.favorite,
                              iconColour: Colors.red,
                            ),
                          );
                        }
                        return GestureDetector(
                          child: const PageViewTileActions(
                            title: 'Like',
                            icon: Icons.favorite_border_outlined,
                          ),
                          onTap: () {
                            BlocProvider.of<FastLaughfBloc>(context).add(
                                FastLaughfEvent.likedVideoEvent(index: index));
                            // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
                            videoLikeNotifier.notifyListeners();
                          },
                        );
                      },
                    ),
                    const PageViewTileActions(
                      title: 'My List',
                      icon: Icons.add,
                    ),
                    const PageViewTileActions(
                      title: 'Share',
                      icon: Icons.share,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class PageViewTileActions extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final icon;
  final String title;
  final Color iconColour;
  const PageViewTileActions(
      {super.key,
      required this.icon,
      required this.title,
      this.iconColour = kwhitecolor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Column(
        children: [
          Icon(
            icon,
            size: 30,
            color: iconColour,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  final void Function(bool isPlaying) onStateChanged;
  final String videoUrl;
  //final VideoPlayerController controller;

  @override
  VideoPlayerScreen({
    super.key,
    required this.videoUrl,
    required this.onStateChanged,
  });

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController? controller;
  @override
  void initState() {
    super.initState();

    // ignore: deprecated_member_use
    controller = VideoPlayerController.network(widget.videoUrl);
    controller!.initialize().then(
      (value) {
        setState(
          () {
            controller!.play();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: controller!.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: controller!.value.aspectRatio,
                          child: VideoPlayer(
                            controller!,
                          ),
                        )
                      : const Center(
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                ),
                Positioned(
                  bottom: 0,
                  right: 7,
                  child: GestureDetector(
                    onTap: () {
                      if (controller!.value.isPlaying) {
                        controller!.pause();
                      } else {
                        controller!.play();
                      }
                    },
                    child: PageViewTileActions(
                        icon: controller!.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                        title: controller!.value.isPlaying ? 'Pause' : 'Play'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller!.dispose();
  }
}
