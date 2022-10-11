// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloads1.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Downloads _$DownloadsFromJson(Map<String, dynamic> json) {
  return _Downloads.fromJson(json);
}

/// @nodoc
mixin _$Downloads {
  @JsonKey(name: 'poster_path')
  String? get posterpath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadsCopyWith<Downloads> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsCopyWith<$Res> {
  factory $DownloadsCopyWith(Downloads value, $Res Function(Downloads) then) =
      _$DownloadsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'poster_path') String? posterpath});
}

/// @nodoc
class _$DownloadsCopyWithImpl<$Res> implements $DownloadsCopyWith<$Res> {
  _$DownloadsCopyWithImpl(this._value, this._then);

  final Downloads _value;
  // ignore: unused_field
  final $Res Function(Downloads) _then;

  @override
  $Res call({
    Object? posterpath = freezed,
  }) {
    return _then(_value.copyWith(
      posterpath: posterpath == freezed
          ? _value.posterpath
          : posterpath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DownloadsCopyWith<$Res> implements $DownloadsCopyWith<$Res> {
  factory _$$_DownloadsCopyWith(
          _$_Downloads value, $Res Function(_$_Downloads) then) =
      __$$_DownloadsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'poster_path') String? posterpath});
}

/// @nodoc
class __$$_DownloadsCopyWithImpl<$Res> extends _$DownloadsCopyWithImpl<$Res>
    implements _$$_DownloadsCopyWith<$Res> {
  __$$_DownloadsCopyWithImpl(
      _$_Downloads _value, $Res Function(_$_Downloads) _then)
      : super(_value, (v) => _then(v as _$_Downloads));

  @override
  _$_Downloads get _value => super._value as _$_Downloads;

  @override
  $Res call({
    Object? posterpath = freezed,
  }) {
    return _then(_$_Downloads(
      posterpath: posterpath == freezed
          ? _value.posterpath
          : posterpath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Downloads implements _Downloads {
  const _$_Downloads({@JsonKey(name: 'poster_path') required this.posterpath});

  factory _$_Downloads.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadsFromJson(json);

  @override
  @JsonKey(name: 'poster_path')
  final String? posterpath;

  @override
  String toString() {
    return 'Downloads(posterpath: $posterpath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Downloads &&
            const DeepCollectionEquality()
                .equals(other.posterpath, posterpath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(posterpath));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadsCopyWith<_$_Downloads> get copyWith =>
      __$$_DownloadsCopyWithImpl<_$_Downloads>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadsToJson(
      this,
    );
  }
}

abstract class _Downloads implements Downloads {
  const factory _Downloads(
          {@JsonKey(name: 'poster_path') required final String? posterpath}) =
      _$_Downloads;

  factory _Downloads.fromJson(Map<String, dynamic> json) =
      _$_Downloads.fromJson;

  @override
  @JsonKey(name: 'poster_path')
  String? get posterpath;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadsCopyWith<_$_Downloads> get copyWith =>
      throw _privateConstructorUsedError;
}