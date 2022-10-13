import 'package:dartz/dartz.dart';
import 'package:netflics/domain/core/failures/main_failure.dart';
import 'package:netflics/domain/downloads/models/downloads1.dart';

abstract class iDownloadsrepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImage();
}
