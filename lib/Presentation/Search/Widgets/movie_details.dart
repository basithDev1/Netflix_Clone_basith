import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Domain/search/search_models/searchresponse/searchresponse.dart';
import 'package:netflix/application/Search_bloc/search_bloc.dart';

class MovieDetailsPage extends StatelessWidget {
  final int movieId;

  MovieDetailsPage({required this.movieId});

  @override
  Widget build(BuildContext context) {
    // Retrieve movie details using the movie ID
    // You can use this opportunity to fetch details from a data source (e.g., API, database)
    // Replace the following line with the logic to fetch movie details

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Details'),
      ),
      body: Center(
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.searchResultList.isNotEmpty) {
              SearchResultData movieDetails = state.searchResultList.firstWhere(
                  (movie) => movie.id == movieId,
                  orElse: () => SearchResultData());
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    movieDetails.originalTitle ?? 'no title',
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    movieDetails.originalTitle ?? 'no title',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              );
            } else {
              return Text('No data');
            }
          },
        ),
      ),
    );
  }
}
