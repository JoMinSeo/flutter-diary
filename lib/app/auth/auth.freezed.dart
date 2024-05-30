// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Auth {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@HiveField(0, defaultValue: '') String name)
        signedIn,
    required TResult Function(@HiveField(0, defaultValue: '') String name)
        signingUp,
    required TResult Function() signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@HiveField(0, defaultValue: '') String name)? signedIn,
    TResult? Function(@HiveField(0, defaultValue: '') String name)? signingUp,
    TResult? Function()? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0, defaultValue: '') String name)? signedIn,
    TResult Function(@HiveField(0, defaultValue: '') String name)? signingUp,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SigningUp value) signingUp,
    required TResult Function(SignedOut value) signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SigningUp value)? signingUp,
    TResult? Function(SignedOut value)? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SigningUp value)? signingUp,
    TResult Function(SignedOut value)? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCopyWith<$Res> {
  factory $AuthCopyWith(Auth value, $Res Function(Auth) then) =
      _$AuthCopyWithImpl<$Res, Auth>;
}

/// @nodoc
class _$AuthCopyWithImpl<$Res, $Val extends Auth>
    implements $AuthCopyWith<$Res> {
  _$AuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignedInImplCopyWith<$Res> {
  factory _$$SignedInImplCopyWith(
          _$SignedInImpl value, $Res Function(_$SignedInImpl) then) =
      __$$SignedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@HiveField(0, defaultValue: '') String name});
}

/// @nodoc
class __$$SignedInImplCopyWithImpl<$Res>
    extends _$AuthCopyWithImpl<$Res, _$SignedInImpl>
    implements _$$SignedInImplCopyWith<$Res> {
  __$$SignedInImplCopyWithImpl(
      _$SignedInImpl _value, $Res Function(_$SignedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$SignedInImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 0)
class _$SignedInImpl extends SignedIn {
  _$SignedInImpl({@HiveField(0, defaultValue: '') required this.name})
      : super._();

  @override
  @HiveField(0, defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'Auth.signedIn(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedInImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedInImplCopyWith<_$SignedInImpl> get copyWith =>
      __$$SignedInImplCopyWithImpl<_$SignedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@HiveField(0, defaultValue: '') String name)
        signedIn,
    required TResult Function(@HiveField(0, defaultValue: '') String name)
        signingUp,
    required TResult Function() signedOut,
  }) {
    return signedIn(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@HiveField(0, defaultValue: '') String name)? signedIn,
    TResult? Function(@HiveField(0, defaultValue: '') String name)? signingUp,
    TResult? Function()? signedOut,
  }) {
    return signedIn?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0, defaultValue: '') String name)? signedIn,
    TResult Function(@HiveField(0, defaultValue: '') String name)? signingUp,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SigningUp value) signingUp,
    required TResult Function(SignedOut value) signedOut,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SigningUp value)? signingUp,
    TResult? Function(SignedOut value)? signedOut,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SigningUp value)? signingUp,
    TResult Function(SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class SignedIn extends Auth {
  factory SignedIn(
          {@HiveField(0, defaultValue: '') required final String name}) =
      _$SignedInImpl;
  SignedIn._() : super._();

  @HiveField(0, defaultValue: '')
  String get name;
  @JsonKey(ignore: true)
  _$$SignedInImplCopyWith<_$SignedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SigningUpImplCopyWith<$Res> {
  factory _$$SigningUpImplCopyWith(
          _$SigningUpImpl value, $Res Function(_$SigningUpImpl) then) =
      __$$SigningUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@HiveField(0, defaultValue: '') String name});
}

/// @nodoc
class __$$SigningUpImplCopyWithImpl<$Res>
    extends _$AuthCopyWithImpl<$Res, _$SigningUpImpl>
    implements _$$SigningUpImplCopyWith<$Res> {
  __$$SigningUpImplCopyWithImpl(
      _$SigningUpImpl _value, $Res Function(_$SigningUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$SigningUpImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 1)
class _$SigningUpImpl extends SigningUp {
  _$SigningUpImpl({@HiveField(0, defaultValue: '') required this.name})
      : super._();

  @override
  @HiveField(0, defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'Auth.signingUp(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigningUpImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigningUpImplCopyWith<_$SigningUpImpl> get copyWith =>
      __$$SigningUpImplCopyWithImpl<_$SigningUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@HiveField(0, defaultValue: '') String name)
        signedIn,
    required TResult Function(@HiveField(0, defaultValue: '') String name)
        signingUp,
    required TResult Function() signedOut,
  }) {
    return signingUp(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@HiveField(0, defaultValue: '') String name)? signedIn,
    TResult? Function(@HiveField(0, defaultValue: '') String name)? signingUp,
    TResult? Function()? signedOut,
  }) {
    return signingUp?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0, defaultValue: '') String name)? signedIn,
    TResult Function(@HiveField(0, defaultValue: '') String name)? signingUp,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signingUp != null) {
      return signingUp(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SigningUp value) signingUp,
    required TResult Function(SignedOut value) signedOut,
  }) {
    return signingUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SigningUp value)? signingUp,
    TResult? Function(SignedOut value)? signedOut,
  }) {
    return signingUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SigningUp value)? signingUp,
    TResult Function(SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signingUp != null) {
      return signingUp(this);
    }
    return orElse();
  }
}

abstract class SigningUp extends Auth {
  factory SigningUp(
          {@HiveField(0, defaultValue: '') required final String name}) =
      _$SigningUpImpl;
  SigningUp._() : super._();

  @HiveField(0, defaultValue: '')
  String get name;
  @JsonKey(ignore: true)
  _$$SigningUpImplCopyWith<_$SigningUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignedOutImplCopyWith<$Res> {
  factory _$$SignedOutImplCopyWith(
          _$SignedOutImpl value, $Res Function(_$SignedOutImpl) then) =
      __$$SignedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedOutImplCopyWithImpl<$Res>
    extends _$AuthCopyWithImpl<$Res, _$SignedOutImpl>
    implements _$$SignedOutImplCopyWith<$Res> {
  __$$SignedOutImplCopyWithImpl(
      _$SignedOutImpl _value, $Res Function(_$SignedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignedOutImpl extends SignedOut {
  _$SignedOutImpl() : super._();

  @override
  String toString() {
    return 'Auth.signedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@HiveField(0, defaultValue: '') String name)
        signedIn,
    required TResult Function(@HiveField(0, defaultValue: '') String name)
        signingUp,
    required TResult Function() signedOut,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@HiveField(0, defaultValue: '') String name)? signedIn,
    TResult? Function(@HiveField(0, defaultValue: '') String name)? signingUp,
    TResult? Function()? signedOut,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0, defaultValue: '') String name)? signedIn,
    TResult Function(@HiveField(0, defaultValue: '') String name)? signingUp,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SigningUp value) signingUp,
    required TResult Function(SignedOut value) signedOut,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SigningUp value)? signingUp,
    TResult? Function(SignedOut value)? signedOut,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SigningUp value)? signingUp,
    TResult Function(SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut extends Auth {
  factory SignedOut() = _$SignedOutImpl;
  SignedOut._() : super._();
}
