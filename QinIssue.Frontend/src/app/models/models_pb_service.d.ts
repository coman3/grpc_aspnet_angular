// package: QinIssue
// file: models.proto

import * as models_pb from "./models_pb";
import {grpc} from "@improbable-eng/grpc-web";

type IssueServiceCreateIssue = {
  readonly methodName: string;
  readonly service: typeof IssueService;
  readonly requestStream: false;
  readonly responseStream: false;
  readonly requestType: typeof models_pb.NewIssue;
  readonly responseType: typeof models_pb.BoolStatus;
};

type IssueServiceGetIssues = {
  readonly methodName: string;
  readonly service: typeof IssueService;
  readonly requestStream: false;
  readonly responseStream: false;
  readonly requestType: typeof models_pb.GetIssue;
  readonly responseType: typeof models_pb.IssueList;
};

export class IssueService {
  static readonly serviceName: string;
  static readonly CreateIssue: IssueServiceCreateIssue;
  static readonly GetIssues: IssueServiceGetIssues;
}

export type ServiceError = { message: string, code: number; metadata: grpc.Metadata }
export type Status = { details: string, code: number; metadata: grpc.Metadata }

interface UnaryResponse {
  cancel(): void;
}
interface ResponseStream<T> {
  cancel(): void;
  on(type: 'data', handler: (message: T) => void): ResponseStream<T>;
  on(type: 'end', handler: (status?: Status) => void): ResponseStream<T>;
  on(type: 'status', handler: (status: Status) => void): ResponseStream<T>;
}
interface RequestStream<T> {
  write(message: T): RequestStream<T>;
  end(): void;
  cancel(): void;
  on(type: 'end', handler: (status?: Status) => void): RequestStream<T>;
  on(type: 'status', handler: (status: Status) => void): RequestStream<T>;
}
interface BidirectionalStream<ReqT, ResT> {
  write(message: ReqT): BidirectionalStream<ReqT, ResT>;
  end(): void;
  cancel(): void;
  on(type: 'data', handler: (message: ResT) => void): BidirectionalStream<ReqT, ResT>;
  on(type: 'end', handler: (status?: Status) => void): BidirectionalStream<ReqT, ResT>;
  on(type: 'status', handler: (status: Status) => void): BidirectionalStream<ReqT, ResT>;
}

export class IssueServiceClient {
  readonly serviceHost: string;

  constructor(serviceHost: string, options?: grpc.RpcOptions);
  createIssue(
    requestMessage: models_pb.NewIssue,
    metadata: grpc.Metadata,
    callback: (error: ServiceError|null, responseMessage: models_pb.BoolStatus|null) => void
  ): UnaryResponse;
  createIssue(
    requestMessage: models_pb.NewIssue,
    callback: (error: ServiceError|null, responseMessage: models_pb.BoolStatus|null) => void
  ): UnaryResponse;
  getIssues(
    requestMessage: models_pb.GetIssue,
    metadata: grpc.Metadata,
    callback: (error: ServiceError|null, responseMessage: models_pb.IssueList|null) => void
  ): UnaryResponse;
  getIssues(
    requestMessage: models_pb.GetIssue,
    callback: (error: ServiceError|null, responseMessage: models_pb.IssueList|null) => void
  ): UnaryResponse;
}

