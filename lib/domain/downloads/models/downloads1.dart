import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads1.freezed.dart';
part 'downloads1.g.dart';

@freezed
class Downloads with _$Downloads {
  const factory Downloads({
    @JsonKey(name: 'poster_path') required String? posterpath,
  }) = _Downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);
}
