import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Core/colors.dart';
import 'package:netflix/Core/constants.dart';
import 'package:netflix/Presentation/Search/Widgets/title.dart';
import 'package:netflix/application/Search_bloc/search_bloc.dart';

class ScreenSearchIdle extends StatelessWidget {
  const ScreenSearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SearchBloc>(context).add(const SearchEvent.intialize());
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchScreenTitleWidget(
            title: 'Top Searches',
          ),
          const SizedBox(
            height: 15,
          ),
          BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading == true) {
                return Center(child: const CircularProgressIndicator());
              } else if (state.isError) {
                return const Center(
                  child: Text('Error'),
                );
              } else {
                return Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) => SearchListItems(
                      imageUrl:
                          "$kimageAppenUrl${state.idleList[index].posterPath ?? 'No image'}",
                      title: state.idleList[index].title ?? 'No title',
                    ),
                    separatorBuilder: (ctx, index) => kseperatedsizedbox,
                    itemCount: state.idleList.length,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

class SearchListItems extends StatelessWidget {
  final String imageUrl;
  final String title;
  const SearchListItems(
      {super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
          height: 79,
          width: size * 0.35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.blue,
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imageUrl)),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ),
        const CircleAvatar(
          backgroundColor: kwhitecolor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kblackcolor,
            radius: 22,
            child: Padding(
              padding: EdgeInsets.only(left: 3),
              child: Center(
                  child: Icon(
                CupertinoIcons.play_fill,
                color: kwhitecolor,
              )),
            ),
          ),
        )
      ],
    );
  }
}
