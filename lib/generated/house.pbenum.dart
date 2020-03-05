///
//  Generated code. Do not modify.
//  source: house.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ProtoRoom extends $pb.ProtobufEnum {
  static const ProtoRoom Nappali = ProtoRoom._(0, 'Nappali');
  static const ProtoRoom Konyha = ProtoRoom._(1, 'Konyha');
  static const ProtoRoom Haloszoba = ProtoRoom._(2, 'Haloszoba');
  static const ProtoRoom Vendegszoba = ProtoRoom._(3, 'Vendegszoba');

  static const $core.List<ProtoRoom> values = <ProtoRoom> [
    Nappali,
    Konyha,
    Haloszoba,
    Vendegszoba,
  ];

  static final $core.Map<$core.int, ProtoRoom> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ProtoRoom valueOf($core.int value) => _byValue[value];

  const ProtoRoom._($core.int v, $core.String n) : super(v, n);
}

