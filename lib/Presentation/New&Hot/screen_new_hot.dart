import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Core/colors.dart';
import 'package:netflix/application/new_and_hot/new_and_hot_bloc.dart';

import '../../Core/constants.dart';
import 'Widgets/coming_soon.dart';
import 'Widgets/every_ones_watching_widget.dart';

class ScreenNewHot extends StatelessWidget {
  const ScreenNewHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            backgroundColor: const Color.fromARGB(0, 155, 94, 94),
            elevation: 0,
            bottom: TabBar(
                labelColor: kblackcolor,
                isScrollable: true,
                tabs: const [
                  Tab(
                    height: 20,
                    child: TabBarOptions(
                      text: '🍿Coming  Soon',
                    ),
                  ),
                  Tab(child: TabBarOptions(text: '👀 Every Ones Watching')),
                ],
                indicator: BoxDecoration(
                  color: kwhitecolor,
                  borderRadius: BorderRadius.circular(25),
                ),
                unselectedLabelColor: kwhitecolor),
            actions: [
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
            ],
            title: const Text(
              'New & Hot',
              style: TextStyle(
                  color: kwhitecolor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            ComingSoonWidget(),
            EveryOneWatching(),
          ],
        ),
      ),
    );
  }
}

class TabBarOptions extends StatelessWidget {
  final String text;
  const TabBarOptions({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 17,
      ),
    );
  }
}

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NewAndHotBloc>(context)
        .add(const NewAndHotEvent.firstevent());

    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        if (state.isLoading == true) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          itemCount: state.list.length,
          itemBuilder: (BuildContext ctx, index) {
            if (state.list.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError) {
              return const Center(
                child: Text('Something Went Wrong'),
              );
            } else {
              String releaseDate = state.list[index].releaseDate!;
              DateTime parsedDate = DateTime.parse(releaseDate);

              if (state.list[index].id == null) {
                return const SizedBox();
              }

              return ComigSoonWidget(
                imageUrl:
                    "$kimageAppenUrl${state.list[index].posterPath ?? 'No Image'}",
                description: state.list[index].overview ?? 'no Overview',
                title: state.list[index].originalTitle ?? 'no Title',
                realeaseDate: parsedDate,
                id: state.list[index].id.toString(),
              );
            }
          },
        );
      },
    );
  }
}

class EveryOneWatching extends StatelessWidget {
  const EveryOneWatching({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NewAndHotBloc>(context)
        .add(const NewAndHotEvent.secondevent());
    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        print("download list id ${state.downloadlist}");

        if (state.isLoading == true) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        }
        return ListView.builder(
          itemCount: state.downloadlist.length,
          itemBuilder: (BuildContext ctx, index) {
            if (state.downloadlist.isEmpty) {
              return const Center(
                child: Text('Something Went Wrong'),
              );
            } else if (state.isError) {
              return const Center(
                child: Text('Something Went Wrong'),
              );
            } else {
              return EveryOneWatchingWidget(
                  imageUrl:
                      "$kimageAppenUrl${state.downloadlist[index].posterPath ?? 'No Image'}",
                  description:
                      state.downloadlist[index].overview ?? 'no Overview',
                  title: state.downloadlist[index].title ?? 'no Title',
                  id: '');
            }
          },
        );
      },
    );
  }
}
