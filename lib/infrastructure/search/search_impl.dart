import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:netflics/domain/core/apiendpoints.dart';
import 'package:netflics/domain/search/model/search_response/search_response.dart';
import 'package:netflics/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflics/domain/search/search_service.dart';

class SearchImpl implements SearchService {
  @override
  Future<Either<MainFailure, SearchResponse>> searchMovies(
      {required String movieQuery}) async {
    // TODO: implement searchMovies
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndpoints.search, queryParameters: {
        'query': movieQuery,
      });

      if (response.statusCode == 200 || response.statusCode == 201) {
        //log(response.data.toString());
        //log('hello');
        // final downloadslist = (response.data['results'] as List)
        //     .map((e) => SearchResponse.fromJson(e))
        //     .toList();
        final result = SearchResponse.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
