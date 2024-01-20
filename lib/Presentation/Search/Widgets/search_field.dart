import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Core/Debouncer/debouncer.dart';
import 'package:netflix/Core/colors.dart';

import 'package:netflix/application/Search_bloc/search_bloc.dart';

final debouncer = Debouncer(milliseconds: 1 * 1000);

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      onChanged: (value) {
        if (value.isEmpty) {
          BlocProvider.of<SearchBloc>(context)
              .add(const SearchEvent.valueNullInTextField());
        } else {
          debouncer.run(() {
            BlocProvider.of<SearchBloc>(context).add(
              SearchEvent.getSearch(movieQuery: value),
            );
          });
        }
      },
      style: const TextStyle(
        color: kwhitecolor,
      ),
      backgroundColor: Colors.grey[850],
      prefixIcon: const Icon(
        CupertinoIcons.search,
        color: Colors.grey,
      ),
      suffixIcon: Icon(
        CupertinoIcons.xmark_circle_fill,
        color: kgreycolor,
      ),
    );
  }
}
