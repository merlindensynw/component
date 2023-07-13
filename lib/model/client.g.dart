// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Client> _$clientSerializer = new _$ClientSerializer();

class _$ClientSerializer implements StructuredSerializer<Client> {
  @override
  final Iterable<Type> types = const [Client, _$Client];
  @override
  final String wireName = 'Client';

  @override
  Iterable<Object?> serialize(Serializers serializers, Client object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Client deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClientBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Client extends Client {
  @override
  final String id;
  @override
  final String name;

  factory _$Client([void Function(ClientBuilder)? updates]) =>
      (new ClientBuilder()..update(updates))._build();

  _$Client._({required this.id, required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Client', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Client', 'name');
  }

  @override
  Client rebuild(void Function(ClientBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientBuilder toBuilder() => new ClientBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Client && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Client')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ClientBuilder implements Builder<Client, ClientBuilder> {
  _$Client? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ClientBuilder();

  ClientBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Client other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Client;
  }

  @override
  void update(void Function(ClientBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Client build() => _build();

  _$Client _build() {
    final _$result = _$v ??
        new _$Client._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Client', 'id'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'Client', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
