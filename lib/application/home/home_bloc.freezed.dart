// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeData,
    required TResult Function(int index) onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeData,
    TResult? Function(int index)? onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeData,
    TResult Function(int index)? onChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeData value) getHomeData,
    required TResult Function(_OnChange value) onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeData value)? getHomeData,
    TResult? Function(_OnChange value)? onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeData value)? getHomeData,
    TResult Function(_OnChange value)? onChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetHomeDataImplCopyWith<$Res> {
  factory _$$GetHomeDataImplCopyWith(
          _$GetHomeDataImpl value, $Res Function(_$GetHomeDataImpl) then) =
      __$$GetHomeDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeDataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetHomeDataImpl>
    implements _$$GetHomeDataImplCopyWith<$Res> {
  __$$GetHomeDataImplCopyWithImpl(
      _$GetHomeDataImpl _value, $Res Function(_$GetHomeDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomeDataImpl implements _GetHomeData {
  const _$GetHomeDataImpl();

  @override
  String toString() {
    return 'HomeEvent.getHomeData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHomeDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeData,
    required TResult Function(int index) onChange,
  }) {
    return getHomeData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeData,
    TResult? Function(int index)? onChange,
  }) {
    return getHomeData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeData,
    TResult Function(int index)? onChange,
    required TResult orElse(),
  }) {
    if (getHomeData != null) {
      return getHomeData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeData value) getHomeData,
    required TResult Function(_OnChange value) onChange,
  }) {
    return getHomeData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeData value)? getHomeData,
    TResult? Function(_OnChange value)? onChange,
  }) {
    return getHomeData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeData value)? getHomeData,
    TResult Function(_OnChange value)? onChange,
    required TResult orElse(),
  }) {
    if (getHomeData != null) {
      return getHomeData(this);
    }
    return orElse();
  }
}

abstract class _GetHomeData implements HomeEvent {
  const factory _GetHomeData() = _$GetHomeDataImpl;
}

/// @nodoc
abstract class _$$OnChangeImplCopyWith<$Res> {
  factory _$$OnChangeImplCopyWith(
          _$OnChangeImpl value, $Res Function(_$OnChangeImpl) then) =
      __$$OnChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$OnChangeImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnChangeImpl>
    implements _$$OnChangeImplCopyWith<$Res> {
  __$$OnChangeImplCopyWithImpl(
      _$OnChangeImpl _value, $Res Function(_$OnChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$OnChangeImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnChangeImpl implements _OnChange {
  const _$OnChangeImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.onChange(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangeImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangeImplCopyWith<_$OnChangeImpl> get copyWith =>
      __$$OnChangeImplCopyWithImpl<_$OnChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeData,
    required TResult Function(int index) onChange,
  }) {
    return onChange(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeData,
    TResult? Function(int index)? onChange,
  }) {
    return onChange?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeData,
    TResult Function(int index)? onChange,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeData value) getHomeData,
    required TResult Function(_OnChange value) onChange,
  }) {
    return onChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeData value)? getHomeData,
    TResult? Function(_OnChange value)? onChange,
  }) {
    return onChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeData value)? getHomeData,
    TResult Function(_OnChange value)? onChange,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(this);
    }
    return orElse();
  }
}

abstract class _OnChange implements HomeEvent {
  const factory _OnChange(final int index) = _$OnChangeImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$OnChangeImplCopyWith<_$OnChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<HomeModel> get newLsit => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<String> get pageImage => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<HomeModel> newLsit,
      bool isLoading,
      bool isError,
      List<String> pageImage,
      int currentIndex});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newLsit = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? pageImage = null,
    Object? currentIndex = null,
  }) {
    return _then(_value.copyWith(
      newLsit: null == newLsit
          ? _value.newLsit
          : newLsit // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      pageImage: null == pageImage
          ? _value.pageImage
          : pageImage // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<HomeModel> newLsit,
      bool isLoading,
      bool isError,
      List<String> pageImage,
      int currentIndex});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newLsit = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? pageImage = null,
    Object? currentIndex = null,
  }) {
    return _then(_$HomeStateImpl(
      newLsit: null == newLsit
          ? _value._newLsit
          : newLsit // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      pageImage: null == pageImage
          ? _value._pageImage
          : pageImage // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required final List<HomeModel> newLsit,
      required this.isLoading,
      required this.isError,
      required final List<String> pageImage,
      required this.currentIndex})
      : _newLsit = newLsit,
        _pageImage = pageImage;

  final List<HomeModel> _newLsit;
  @override
  List<HomeModel> get newLsit {
    if (_newLsit is EqualUnmodifiableListView) return _newLsit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newLsit);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<String> _pageImage;
  @override
  List<String> get pageImage {
    if (_pageImage is EqualUnmodifiableListView) return _pageImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pageImage);
  }

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'HomeState(newLsit: $newLsit, isLoading: $isLoading, isError: $isError, pageImage: $pageImage, currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(other._newLsit, _newLsit) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._pageImage, _pageImage) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_newLsit),
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_pageImage),
      currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final List<HomeModel> newLsit,
      required final bool isLoading,
      required final bool isError,
      required final List<String> pageImage,
      required final int currentIndex}) = _$HomeStateImpl;

  @override
  List<HomeModel> get newLsit;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<String> get pageImage;
  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
