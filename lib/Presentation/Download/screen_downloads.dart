import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Core/constants.dart';
import 'package:netflix/Presentation/Download/Widgets/download_fancy_widget.dart';

import 'package:netflix/application/downloads_bloc/downloads_bloc.dart';

import '../../Core/colors.dart';

import '../Widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  // final downloadWigets = [
  //   const _SmartDownloads(),
  //   const Section1(),
  //   const Section2(),
  // ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<DownloadsBloc>(context)
            .add(const DownloadsEvent.getDownloadsImage());
      },
    );

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: AppBarWidget(
          title: 'Downloads',
          size: 35,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: kwhitecolor,
                  ),
                  ksizedbox,
                  Text(
                    'Smart Downloads',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Center(
                  child: Text(
                    'Introducing Downloads for you',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 7),
              const Center(
                child: Text(
                  "We'll download a personalised selection of \n   movies and shows for you,so there's \n    always something to watch on your \n                             device ",
                  style: TextStyle(
                      fontSize: 17.5,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                // color: kbluecolor,
                height: 350,
                child: BlocBuilder<DownloadsBloc, DownloadsState>(
                  builder: (context, state) {
                    if (state.download.isNotEmpty) {
                      return Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: kgreycolor,
                            radius: size.width * 0.37,
                          ),
                          DownloadFancyWidget(
                            angle: -16,
                            height: size.width * 0.5,
                            width: size.width * 0.4,
                            margin:
                                const EdgeInsets.only(right: 150, bottom: 20),
                            image:
                                '$kimageAppenUrl${state.download[0].posterPath}',
                          ),
                          DownloadFancyWidget(
                            height: size.width * 0.5,
                            width: size.width * 0.33,
                            angle: 16,
                            margin:
                                const EdgeInsets.only(left: 180, bottom: 20),
                            image:
                                "$kimageAppenUrl${state.download[1].posterPath}",
                          ),
                          DownloadFancyWidget(
                              height: size.width * 0.56,
                              width: size.width * 0.4,
                              margin: const EdgeInsets.only(left: 0, bottom: 0),
                              image:
                                  "$kimageAppenUrl${state.download[2].posterPath}"),
                        ],
                      );
                    } else if (state.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return const Scaffold(
                        body: Center(
                          child: Text('No downloads available'),
                        ),
                      );
                    }
                  },
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        onPressed: () {},
                        color: kbluebuttoncolor,
                        child: const Text(
                          'Setup',
                          style: TextStyle(
                              color: kwhitecolor, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: MaterialButton(
                      onPressed: () {},
                      color: kwhitebuttoncolor,
                      child: const Text(
                        'See What You Can Download',
                        style: TextStyle(
                            color: kblackcolor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
