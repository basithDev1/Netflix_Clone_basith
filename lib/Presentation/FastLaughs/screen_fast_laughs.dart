import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Core/constants.dart';
import 'package:netflix/Presentation/FastLaughs/Widgets/page_view_tile.dart';
import 'package:netflix/application/Fast_Laughf/fast_laughf_bloc.dart';
import 'package:video_player/video_player.dart';

class ScreenFastLaughs extends StatelessWidget {
  const ScreenFastLaughs({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<FastLaughfBloc>(context)
            .add(const FastLaughfEvent.firstevent());
      },
    );

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastLaughfBloc, FastLaughfState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError) {
              return const Center(child: Text('SomeThing Went Wrong'));
            } else if (state.downloadsList.isEmpty) {
              return const Center(child: Text('SomeThing Went Wrong'));
            } else {
              return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                  state.downloadsList.length,
                  (index) => PageViewTile(
                    imageUrl:
                        "$kimageAppenUrl${state.downloadsList[index].posterPath ?? "NULL"}",
                    index: index,
                    moviename: state.downloadsList[index].title ?? 'No Movie',
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
