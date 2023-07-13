import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'package:template/model/serializers.dart';

part 'client.g.dart';

abstract class Client implements Built<Client, ClientBuilder> {


  Client._();
  factory Client([void Function(ClientBuilder) updates]) = _$Client;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Client.serializer, this)
    as Map<String,dynamic>;
  }

  static Client fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Client.serializer, json)!;
  }

  static Serializer<Client> get serializer => _$clientSerializer;

  String get id;
  String get name;

}