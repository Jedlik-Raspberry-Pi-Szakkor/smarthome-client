///
//  Generated code. Do not modify.
//  source: house.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'house.pbenum.dart';

export 'house.pbenum.dart';

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Empty', package: const $pb.PackageName('house'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Empty clone() => Empty()..mergeFromMessage(this);
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty _defaultInstance;
}

class LightChangeMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LightChangeMessage', package: const $pb.PackageName('house'), createEmptyInstance: create)
    ..e<ProtoRoom>(1, 'room', $pb.PbFieldType.OE, defaultOrMaker: ProtoRoom.Nappali, valueOf: ProtoRoom.valueOf, enumValues: ProtoRoom.values)
    ..aOB(2, 'isOn', protoName: 'isOn')
    ..hasRequiredFields = false
  ;

  LightChangeMessage._() : super();
  factory LightChangeMessage() => create();
  factory LightChangeMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LightChangeMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LightChangeMessage clone() => LightChangeMessage()..mergeFromMessage(this);
  LightChangeMessage copyWith(void Function(LightChangeMessage) updates) => super.copyWith((message) => updates(message as LightChangeMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LightChangeMessage create() => LightChangeMessage._();
  LightChangeMessage createEmptyInstance() => create();
  static $pb.PbList<LightChangeMessage> createRepeated() => $pb.PbList<LightChangeMessage>();
  @$core.pragma('dart2js:noInline')
  static LightChangeMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LightChangeMessage>(create);
  static LightChangeMessage _defaultInstance;

  @$pb.TagNumber(1)
  ProtoRoom get room => $_getN(0);
  @$pb.TagNumber(1)
  set room(ProtoRoom v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoom() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoom() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isOn => $_getBF(1);
  @$pb.TagNumber(2)
  set isOn($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsOn() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsOn() => clearField(2);
}

enum Event_Event {
  lightChangeEvent, 
  notSet
}

class Event extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Event_Event> _Event_EventByTag = {
    1 : Event_Event.lightChangeEvent,
    0 : Event_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Event', package: const $pb.PackageName('house'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<LightChangeEvent>(1, 'lightChangeEvent', protoName: 'lightChangeEvent', subBuilder: LightChangeEvent.create)
    ..hasRequiredFields = false
  ;

  Event._() : super();
  factory Event() => create();
  factory Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Event clone() => Event()..mergeFromMessage(this);
  Event copyWith(void Function(Event) updates) => super.copyWith((message) => updates(message as Event));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  Event createEmptyInstance() => create();
  static $pb.PbList<Event> createRepeated() => $pb.PbList<Event>();
  @$core.pragma('dart2js:noInline')
  static Event getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Event>(create);
  static Event _defaultInstance;

  Event_Event whichEvent() => _Event_EventByTag[$_whichOneof(0)];
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  LightChangeEvent get lightChangeEvent => $_getN(0);
  @$pb.TagNumber(1)
  set lightChangeEvent(LightChangeEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLightChangeEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearLightChangeEvent() => clearField(1);
  @$pb.TagNumber(1)
  LightChangeEvent ensureLightChangeEvent() => $_ensure(0);
}

class LightChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LightChangeEvent', package: const $pb.PackageName('house'), createEmptyInstance: create)
    ..e<ProtoRoom>(1, 'room', $pb.PbFieldType.OE, defaultOrMaker: ProtoRoom.Nappali, valueOf: ProtoRoom.valueOf, enumValues: ProtoRoom.values)
    ..aOB(2, 'isOn', protoName: 'isOn')
    ..hasRequiredFields = false
  ;

  LightChangeEvent._() : super();
  factory LightChangeEvent() => create();
  factory LightChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LightChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LightChangeEvent clone() => LightChangeEvent()..mergeFromMessage(this);
  LightChangeEvent copyWith(void Function(LightChangeEvent) updates) => super.copyWith((message) => updates(message as LightChangeEvent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LightChangeEvent create() => LightChangeEvent._();
  LightChangeEvent createEmptyInstance() => create();
  static $pb.PbList<LightChangeEvent> createRepeated() => $pb.PbList<LightChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static LightChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LightChangeEvent>(create);
  static LightChangeEvent _defaultInstance;

  @$pb.TagNumber(1)
  ProtoRoom get room => $_getN(0);
  @$pb.TagNumber(1)
  set room(ProtoRoom v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoom() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoom() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isOn => $_getBF(1);
  @$pb.TagNumber(2)
  set isOn($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsOn() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsOn() => clearField(2);
}

