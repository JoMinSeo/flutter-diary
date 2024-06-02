// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SignedInImplAdapter extends TypeAdapter<_$SignedInImpl> {
  @override
  final int typeId = 0;

  @override
  _$SignedInImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SignedInImpl(
      name: fields[0] == null ? '' : fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$SignedInImpl obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignedInImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SigningUpImplAdapter extends TypeAdapter<_$SigningUpImpl> {
  @override
  final int typeId = 1;

  @override
  _$SigningUpImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SigningUpImpl(
      name: fields[0] == null ? '' : fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$SigningUpImpl obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SigningUpImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
