import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Core/colors.dart';
import 'package:netflix/Core/constants.dart';
import 'package:netflix/Presentation/Search/Widgets/movie_details.dart';
import 'package:netflix/Presentation/Search/Widgets/title.dart';
import 'package:netflix/application/Search_bloc/search_bloc.dart';

class ScreenSearchResult extends StatelessWidget {
  const ScreenSearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchScreenTitleWidget(title: 'Movies & Tv'),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return GridView.count(
                  childAspectRatio: 1 / 1.4,
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 7,
                  children: List.generate(
                    state.searchResultList.length,
                    (index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MovieDetailsPage(
                                  movieId: state.searchResultList[index].id!),
                            ),
                          );
                        },
                        child: ResultItems(
                          imageUrl:
                              "$kimageAppenUrl${state.searchResultList[index].posterPath ?? 'No Image'}",
                        ),
                      );
                    },
                  ));
            },
          ),
        ),
      ],
    );
  }
}

class ResultItems extends StatelessWidget {
  final String imageUrl;

  const ResultItems({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        child: Image.network(imageUrl, fit: BoxFit.cover, errorBuilder:
            (BuildContext context, Object error, StackTrace? stackTrace) {
          // Error occurred while loading image
          return _buildErrorWidget(); // Custom error UI
        }),
      ),
    );
  }
}

Widget _buildErrorWidget() {
  return Icon(Icons.error,
      color: Colors.red); // Custom error UI (could be an image or any widget)
}
