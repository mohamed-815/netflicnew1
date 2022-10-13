import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflics/domain/core/failures/main_failure.dart';
import 'package:netflics/domain/downloads/models/downloads1.dart';
import 'package:netflics/domain/downloads/models/i_downloads_repo.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final iDownloadsrepo _downloadsrepo;

  DownloadsBloc(this._downloadsrepo) : super(DownloadsState.inital()) {
    on<_GetDownloadsImage>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, downloadsFailureorSuccessOption: none()));

      final Either<MainFailure, List<Downloads>> downloadsOption =
          await _downloadsrepo.getDownloadsImage();
      log(downloadsOption.toString());
      emit(downloadsOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              downloadsFailureorSuccessOption: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              downloads: success,
              downloadsFailureorSuccessOption: Some(Right(success)))));
      // TODO: implement event handler
    });
  }
}
