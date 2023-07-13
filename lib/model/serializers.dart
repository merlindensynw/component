library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:http/http.dart';


import 'app_state.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
  Client,

])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
