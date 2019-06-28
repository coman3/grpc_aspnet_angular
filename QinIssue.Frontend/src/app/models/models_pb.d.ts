// package: QinIssue
// file: models.proto

import * as jspb from "google-protobuf";

export class BoolStatus extends jspb.Message {
  getCompleted(): boolean;
  setCompleted(value: boolean): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): BoolStatus.AsObject;
  static toObject(includeInstance: boolean, msg: BoolStatus): BoolStatus.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: BoolStatus, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): BoolStatus;
  static deserializeBinaryFromReader(message: BoolStatus, reader: jspb.BinaryReader): BoolStatus;
}

export namespace BoolStatus {
  export type AsObject = {
    completed: boolean,
  }
}

export class NewIssue extends jspb.Message {
  getTitle(): string;
  setTitle(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): NewIssue.AsObject;
  static toObject(includeInstance: boolean, msg: NewIssue): NewIssue.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: NewIssue, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): NewIssue;
  static deserializeBinaryFromReader(message: NewIssue, reader: jspb.BinaryReader): NewIssue;
}

export namespace NewIssue {
  export type AsObject = {
    title: string,
  }
}

export class GetIssue extends jspb.Message {
  getTitlecontains(): string;
  setTitlecontains(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetIssue.AsObject;
  static toObject(includeInstance: boolean, msg: GetIssue): GetIssue.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: GetIssue, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetIssue;
  static deserializeBinaryFromReader(message: GetIssue, reader: jspb.BinaryReader): GetIssue;
}

export namespace GetIssue {
  export type AsObject = {
    titlecontains: string,
  }
}

export class Issue extends jspb.Message {
  getId(): string;
  setId(value: string): void;

  getTitle(): string;
  setTitle(value: string): void;

  getResolved(): boolean;
  setResolved(value: boolean): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): Issue.AsObject;
  static toObject(includeInstance: boolean, msg: Issue): Issue.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: Issue, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): Issue;
  static deserializeBinaryFromReader(message: Issue, reader: jspb.BinaryReader): Issue;
}

export namespace Issue {
  export type AsObject = {
    id: string,
    title: string,
    resolved: boolean,
  }
}

export class IssueList extends jspb.Message {
  clearIssuesList(): void;
  getIssuesList(): Array<Issue>;
  setIssuesList(value: Array<Issue>): void;
  addIssues(value?: Issue, index?: number): Issue;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): IssueList.AsObject;
  static toObject(includeInstance: boolean, msg: IssueList): IssueList.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: IssueList, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): IssueList;
  static deserializeBinaryFromReader(message: IssueList, reader: jspb.BinaryReader): IssueList;
}

export namespace IssueList {
  export type AsObject = {
    issuesList: Array<Issue.AsObject>,
  }
}

