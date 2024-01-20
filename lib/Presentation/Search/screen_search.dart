import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Presentation/Search/Widgets/screen_search_result.dart';

import 'package:netflix/Presentation/Search/Widgets/search_field.dart';
import 'package:netflix/application/Search_bloc/search_bloc.dart';

import 'Widgets/screen_search_idle.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SearchField(),
          Expanded(
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                // print({"searched list${state.searchResultList}"});

                // if (state.searchResultList.isEmpty) {
                //   return ScreenSearchIdle();
                // } else {
                //   return ScreenSearchResult();
                // }

                if (state == SearchState.loading()) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state.searchIsEmpty == true) {
                  return const Center(
                    child: Text('No Movie In This Name'),
                  );
                } else if (state.searchResultList.isEmpty) {
                  return const ScreenSearchIdle();
                } else if (state == SearchState.valueNullInTextFieldState()) {
                  return const ScreenSearchIdle();
                } else {
                  return const ScreenSearchResult();
                }
              },
            ),
          ),
        ],
      )),
    );
  }
}
