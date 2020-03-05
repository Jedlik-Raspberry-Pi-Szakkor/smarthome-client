///
//  Generated code. Do not modify.
//  source: house.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'house.pb.dart' as $0;
export 'house.pb.dart';

class HouseControllerClient extends $grpc.Client {
  static final _$subscribe = $grpc.ClientMethod<$0.Empty, $0.Event>(
      '/house.HouseController/Subscribe',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Event.fromBuffer(value));
  static final _$changeLight =
      $grpc.ClientMethod<$0.LightChangeMessage, $0.Empty>(
          '/house.HouseController/ChangeLight',
          ($0.LightChangeMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  HouseControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<$0.Event> subscribe($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$subscribe, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.Empty> changeLight($0.LightChangeMessage request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$changeLight, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class HouseControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'house.HouseController';

  HouseControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Event>(
        'Subscribe',
        subscribe_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Event value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LightChangeMessage, $0.Empty>(
        'ChangeLight',
        changeLight_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.LightChangeMessage.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Stream<$0.Event> subscribe_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* subscribe(call, await request);
  }

  $async.Future<$0.Empty> changeLight_Pre($grpc.ServiceCall call,
      $async.Future<$0.LightChangeMessage> request) async {
    return changeLight(call, await request);
  }

  $async.Stream<$0.Event> subscribe($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> changeLight(
      $grpc.ServiceCall call, $0.LightChangeMessage request);
}
