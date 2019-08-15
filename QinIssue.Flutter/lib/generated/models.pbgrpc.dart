///
//  Generated code. Do not modify.
//  source: models.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core show int, String, List;

import 'package:grpc/service_api.dart' as $grpc;
import 'models.pb.dart' as $0;
export 'models.pb.dart';

class IssueServiceClient extends $grpc.Client {
  static final _$createIssue = $grpc.ClientMethod<$0.NewIssue, $0.BoolStatus>(
      '/QinIssue.IssueService/CreateIssue',
      ($0.NewIssue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BoolStatus.fromBuffer(value));
  static final _$getIssues = $grpc.ClientMethod<$0.GetIssue, $0.IssueList>(
      '/QinIssue.IssueService/GetIssues',
      ($0.GetIssue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.IssueList.fromBuffer(value));

  IssueServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.BoolStatus> createIssue($0.NewIssue request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createIssue, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.IssueList> getIssues($0.GetIssue request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getIssues, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class IssueServiceBase extends $grpc.Service {
  $core.String get $name => 'QinIssue.IssueService';

  IssueServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.NewIssue, $0.BoolStatus>(
        'CreateIssue',
        createIssue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.NewIssue.fromBuffer(value),
        ($0.BoolStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetIssue, $0.IssueList>(
        'GetIssues',
        getIssues_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetIssue.fromBuffer(value),
        ($0.IssueList value) => value.writeToBuffer()));
  }

  $async.Future<$0.BoolStatus> createIssue_Pre(
      $grpc.ServiceCall call, $async.Future<$0.NewIssue> request) async {
    return createIssue(call, await request);
  }

  $async.Future<$0.IssueList> getIssues_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetIssue> request) async {
    return getIssues(call, await request);
  }

  $async.Future<$0.BoolStatus> createIssue(
      $grpc.ServiceCall call, $0.NewIssue request);
  $async.Future<$0.IssueList> getIssues(
      $grpc.ServiceCall call, $0.GetIssue request);
}
