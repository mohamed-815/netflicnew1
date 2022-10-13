import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:netflics/domain/core/apiendpoints.dart';
import 'package:netflics/domain/downloads/models/downloads1.dart';
import 'package:netflics/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflics/domain/downloads/models/i_downloads_repo.dart';

@LazySingleton(as: iDownloadsrepo)
class DownloadsRepocitory implements iDownloadsrepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImage() async {
    // TODO: implement getDownloadsImage
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndpoints.downloads);

      if (response.statusCode == 200 || response.statusCode == 201) {
        //log(response.data.toString());
        //log('hello');
        final downloadslist = (response.data['results'] as List)
            .map((e) => Downloads.fromJson(e))
            .toList();

        return Right(downloadslist);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
