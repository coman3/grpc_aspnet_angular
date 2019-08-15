///
//  Generated code. Do not modify.
//  source: models.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

class BoolStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BoolStatus', package: const $pb.PackageName('QinIssue'))
    ..aOB(1, 'completed')
    ..hasRequiredFields = false
  ;

  BoolStatus._() : super();
  factory BoolStatus() => create();
  factory BoolStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoolStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BoolStatus clone() => BoolStatus()..mergeFromMessage(this);
  BoolStatus copyWith(void Function(BoolStatus) updates) => super.copyWith((message) => updates(message as BoolStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BoolStatus create() => BoolStatus._();
  BoolStatus createEmptyInstance() => create();
  static $pb.PbList<BoolStatus> createRepeated() => $pb.PbList<BoolStatus>();
  static BoolStatus getDefault() => _defaultInstance ??= create()..freeze();
  static BoolStatus _defaultInstance;

  $core.bool get completed => $_get(0, false);
  set completed($core.bool v) { $_setBool(0, v); }
  $core.bool hasCompleted() => $_has(0);
  void clearCompleted() => clearField(1);
}

class NewIssue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NewIssue', package: const $pb.PackageName('QinIssue'))
    ..aOS(1, 'title')
    ..hasRequiredFields = false
  ;

  NewIssue._() : super();
  factory NewIssue() => create();
  factory NewIssue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewIssue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NewIssue clone() => NewIssue()..mergeFromMessage(this);
  NewIssue copyWith(void Function(NewIssue) updates) => super.copyWith((message) => updates(message as NewIssue));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewIssue create() => NewIssue._();
  NewIssue createEmptyInstance() => create();
  static $pb.PbList<NewIssue> createRepeated() => $pb.PbList<NewIssue>();
  static NewIssue getDefault() => _defaultInstance ??= create()..freeze();
  static NewIssue _defaultInstance;

  $core.String get title => $_getS(0, '');
  set title($core.String v) { $_setString(0, v); }
  $core.bool hasTitle() => $_has(0);
  void clearTitle() => clearField(1);
}

class GetIssue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetIssue', package: const $pb.PackageName('QinIssue'))
    ..aOS(1, 'titleContains')
    ..hasRequiredFields = false
  ;

  GetIssue._() : super();
  factory GetIssue() => create();
  factory GetIssue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetIssue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetIssue clone() => GetIssue()..mergeFromMessage(this);
  GetIssue copyWith(void Function(GetIssue) updates) => super.copyWith((message) => updates(message as GetIssue));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetIssue create() => GetIssue._();
  GetIssue createEmptyInstance() => create();
  static $pb.PbList<GetIssue> createRepeated() => $pb.PbList<GetIssue>();
  static GetIssue getDefault() => _defaultInstance ??= create()..freeze();
  static GetIssue _defaultInstance;

  $core.String get titleContains => $_getS(0, '');
  set titleContains($core.String v) { $_setString(0, v); }
  $core.bool hasTitleContains() => $_has(0);
  void clearTitleContains() => clearField(1);
}

class Issue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Issue', package: const $pb.PackageName('QinIssue'))
    ..aOS(1, 'id')
    ..aOS(2, 'title')
    ..aOB(3, 'resolved')
    ..hasRequiredFields = false
  ;

  Issue._() : super();
  factory Issue() => create();
  factory Issue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Issue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Issue clone() => Issue()..mergeFromMessage(this);
  Issue copyWith(void Function(Issue) updates) => super.copyWith((message) => updates(message as Issue));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Issue create() => Issue._();
  Issue createEmptyInstance() => create();
  static $pb.PbList<Issue> createRepeated() => $pb.PbList<Issue>();
  static Issue getDefault() => _defaultInstance ??= create()..freeze();
  static Issue _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get title => $_getS(1, '');
  set title($core.String v) { $_setString(1, v); }
  $core.bool hasTitle() => $_has(1);
  void clearTitle() => clearField(2);

  $core.bool get resolved => $_get(2, false);
  set resolved($core.bool v) { $_setBool(2, v); }
  $core.bool hasResolved() => $_has(2);
  void clearResolved() => clearField(3);
}

class IssueList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IssueList', package: const $pb.PackageName('QinIssue'))
    ..pc<Issue>(1, 'issues', $pb.PbFieldType.PM,Issue.create)
    ..hasRequiredFields = false
  ;

  IssueList._() : super();
  factory IssueList() => create();
  factory IssueList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IssueList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IssueList clone() => IssueList()..mergeFromMessage(this);
  IssueList copyWith(void Function(IssueList) updates) => super.copyWith((message) => updates(message as IssueList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IssueList create() => IssueList._();
  IssueList createEmptyInstance() => create();
  static $pb.PbList<IssueList> createRepeated() => $pb.PbList<IssueList>();
  static IssueList getDefault() => _defaultInstance ??= create()..freeze();
  static IssueList _defaultInstance;

  $core.List<Issue> get issues => $_getList(0);
}

