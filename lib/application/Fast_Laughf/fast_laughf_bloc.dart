import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/downloads/download_models/downloads.dart';
import 'package:netflix/Domain/downloads/i_downloads_repo.dart';
import 'package:netflix/Domain/fastlaughf/FastLaughfModels/fastlaughf/fastlaughf.dart';
import 'package:netflix/Domain/fastlaughf/i_fastlaughf_repo.dart';

part 'fast_laughf_event.dart';
part 'fast_laughf_state.dart';
part 'fast_laughf_bloc.freezed.dart';

ValueNotifier<Set<int>> videoLikeNotifier = ValueNotifier({});

@injectable
class FastLaughfBloc extends Bloc<FastLaughfEvent, FastLaughfState> {
  final IDownloadsRepo downloadRepo;
  final IFastLaughRepo fastlaughfRepo;
  FastLaughfBloc(this.downloadRepo, this.fastlaughfRepo)
      : super(FastLaughfState.initial()) {
    on<_Firstevent>(
      (event, emit) async {
        emit(
          state.copyWith(
              isLoading: true,
              isError: false,
              downloadsList: [],
              videoList: []),
        );

        final _apiresult = await downloadRepo.getDownloadsImage();
        print(_apiresult.toString());

        final _state = _apiresult.fold(
          (failure) {
            return state.copyWith(
              isLoading: false,
              isError: true,
              downloadsList: [],
              videoList: [],
            );
          },
          (sucess) {
            return state.copyWith(
              isLoading: false,
              isError: false,
              downloadsList: sucess,
              videoList: [],
            );
          },
        );
        emit(_state);

        // final apiresultvideo = await fastlaughfRepo.getVideos();
        // print("Api result From Bloc${apiresultvideo.toString()}");
      },
    );
    on<_LikedVideoEvent>(
      (event, emit) async {
        videoLikeNotifier.value.add(event.index);
      },
    );

    on<_DislikedVideoEvent>(
      (event, emit) {
        videoLikeNotifier.value.remove(event.index);
      },
    );
  }
}
