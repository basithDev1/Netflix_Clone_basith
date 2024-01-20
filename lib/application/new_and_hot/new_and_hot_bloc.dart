import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/NewandHot/i_new_and_hot_repo.dart';
import 'package:netflix/Domain/NewandHot/new_hot_models/new_hot_models.dart';
import 'package:netflix/Domain/core/failures/main_failure.dart';
import 'package:netflix/Domain/downloads/download_models/downloads.dart';
import 'package:netflix/Domain/downloads/i_downloads_repo.dart';

part 'new_and_hot_event.dart';
part 'new_and_hot_state.dart';
part 'new_and_hot_bloc.freezed.dart';

@injectable
class NewAndHotBloc extends Bloc<NewAndHotEvent, NewAndHotState> {
  final INewandHotRepo repo;
  final IDownloadsRepo downloadRepo;
  NewAndHotBloc(this.downloadRepo, {required this.repo})
      : super(NewAndHotState.initial()) {
    on<_Firstevent>(
      (event, emit) async {
        emit(const NewAndHotState(
          isLoading: true,
          isError: false,
          list: [],
          downloadlist: [],
        ));

        final apiresult1 = await repo.getNewandHot();
        if (kDebugMode) {
          print(apiresult1.toString());
        }
        final _state2 = apiresult1.fold(
          (faliure) {
            return const NewAndHotState(
                isLoading: false, isError: true, list: [], downloadlist: []);
          },
          (sucess) {
            return NewAndHotState(
                isLoading: false,
                isError: false,
                list: sucess.results,
                downloadlist: []);
          },
        );
        emit(_state2);
      },
    );

    on<_Secondevent>((event, emit) async {
      emit(
        NewAndHotState(
          isError: false,
          isLoading: true,
          list: [],
          downloadlist: [],
        ),
      );

      final Either<MainFailure, List<Downloads>> apiresult2 =
          await downloadRepo.getDownloadsImage();
      // if (kDebugMode) {
      //   print(apiresult2.toString());
      // }
      log(apiresult2.toString());

      final _state1 = apiresult2.fold(
        (faliure) {
          return NewAndHotState(
            isLoading: false,
            isError: true,
            list: [],
            downloadlist: [],
          );
        },
        (sucess) {
          return NewAndHotState(
            isLoading: false,
            isError: false,
            list: [],
            downloadlist: sucess,
          );
        },
      );
      emit(_state1);
    });
  }
}
