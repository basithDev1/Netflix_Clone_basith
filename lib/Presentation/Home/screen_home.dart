import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Core/colors.dart';
import 'package:netflix/application/Home/home_bloc.dart';

import '../../Core/constants.dart';
import 'Widgets.dart/home_resuse.dart';
import 'Widgets.dart/home_screen_reuse_widget_2.dart';
import 'Widgets.dart/main_image_widget.dart';

ValueNotifier<bool> type = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<HomeBloc>(context).add(const HomeEvent.firstEvent());
      },
    );

    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: type,
            builder: (BuildContext ctx, dynamic newvalue, _) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: NotificationListener<UserScrollNotification>(
                  onNotification: (scrollinfo) {
                    final ScrollDirection direction = scrollinfo.direction;
                    // print(direction);
                    if (direction == ScrollDirection.forward) {
                      // print('User-Scrolling-Up');
                      type.value = true;
                    } else if (direction == ScrollDirection.reverse) {
                      // print('User-Scrolling-down');
                      type.value = false;
                    }

                    return true;
                  },
                  child: Stack(
                    children: [
                      ListView(
                        shrinkWrap: true,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 600,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'lib/assets/openheimer.jpg'))),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                left: 0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const MainImageWidget(
                                      icon: Icons.add,
                                      text: 'My List',
                                    ),
                                    TextButton.icon(
                                      style: TextButton.styleFrom(
                                        minimumSize: const Size(50, 5),
                                        backgroundColor: kwhitebuttoncolor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              10), // Set the border radius
                                        ),
                                      ),
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.play_arrow,
                                        size: 25,
                                        color: kblackcolor,
                                      ),
                                      label: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 0),
                                        child: Text(
                                          'Play',
                                          style: TextStyle(
                                              fontSize: 15, color: kblackcolor),
                                        ),
                                      ),
                                    ),
                                    const MainImageWidget(
                                        icon: Icons.info, text: 'Info')
                                  ],
                                ),
                              ),
                            ],
                          ),
                          BlocBuilder<HomeBloc, HomeState>(
                            builder: (context, state) {
                              if (state.isLoading == true) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else if (state.isError == true) {
                                return const Center(
                                  child: Text('Something Went Wrong'),
                                );
                              } else {
                                return HomeScreenResuseWidget(
                                  title: 'Released in Past Year',
                                  list: state.releasedInPastYear,
                                );
                              }
                            },
                          ),
                          BlocBuilder<HomeBloc, HomeState>(
                            builder: (context, state) {
                              if (state.isLoading == true) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else if (state.isError == true) {
                                return const Center(
                                  child: Text('Something Went Wrong'),
                                );
                              }
                              return HomeScreenResuseWidget(
                                  title: 'Trending Now',
                                  list: state.trndingNow);
                            },
                          ),
                          BlocBuilder<HomeBloc, HomeState>(
                            builder: (context, state) {
                              if (state.isLoading == true) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else if (state.isError == true) {
                                return const Center(
                                  child: Text('Something Went Wrong'),
                                );
                              }
                              return HomeScreenResuseWidget2(
                                title: 'Top 10 TV Shows In India',
                                list: state.top10,
                              );
                            },
                          ),
                          BlocBuilder<HomeBloc, HomeState>(
                            builder: (context, state) {
                              {
                                if (state.isLoading == true) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                } else if (state.isError == true) {
                                  return const Center(
                                    child: Text('Something Went Wrong'),
                                  );
                                }
                                return HomeScreenResuseWidget(
                                  title: 'Tense Drama',
                                  list: state.tenseDrama,
                                );
                              }
                            },
                          ),
                          BlocBuilder<HomeBloc, HomeState>(
                            builder: (context, state) {
                              if (state.isLoading == true) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else if (state.isError == true) {
                                return const Center(
                                  child: Text('Something Went Wrong'),
                                );
                              }
                              return HomeScreenResuseWidget(
                                  title: 'South Indian Cinema',
                                  list: state.southIndianCinema);
                            },
                          ),
                        ],
                      ),
                      type.value == true
                          ? Stack(
                              children: [
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 5000),
                                  width: double.infinity,
                                  height: 90,
                                  color: Colors.black.withOpacity(0.9),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Row(
                                          children: [
                                            const Image(
                                              image: AssetImage(
                                                  'lib/assets/download.png'),
                                              width: 50,
                                              height: 50,
                                            ),
                                            const Spacer(),
                                            const Icon(
                                              Icons.cast,
                                              color: kwhitecolor,
                                              size: 30,
                                            ),
                                            ksizedbox,
                                            Container(
                                              width: 30,
                                              height: 30,
                                              color: kbluecolor,
                                            ),
                                            ksizedbox
                                          ],
                                        ),
                                      ),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Tv Shows',
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Movie',
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Categories',
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
              );
            }));
  }

  TextButton mainimagebuttons({required var text}) => TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(
            color: kwhitecolor, fontWeight: FontWeight.bold, fontSize: 20),
      ));
}
