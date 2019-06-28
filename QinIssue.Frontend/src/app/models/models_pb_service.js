// package: QinIssue
// file: models.proto

var models_pb = require("./models_pb");
var grpc = require("@improbable-eng/grpc-web").grpc;

var IssueService = (function () {
  function IssueService() {}
  IssueService.serviceName = "QinIssue.IssueService";
  return IssueService;
}());

IssueService.CreateIssue = {
  methodName: "CreateIssue",
  service: IssueService,
  requestStream: false,
  responseStream: false,
  requestType: models_pb.NewIssue,
  responseType: models_pb.BoolStatus
};

IssueService.GetIssues = {
  methodName: "GetIssues",
  service: IssueService,
  requestStream: false,
  responseStream: false,
  requestType: models_pb.GetIssue,
  responseType: models_pb.IssueList
};

exports.IssueService = IssueService;

function IssueServiceClient(serviceHost, options) {
  this.serviceHost = serviceHost;
  this.options = options || {};
}

IssueServiceClient.prototype.createIssue = function createIssue(requestMessage, metadata, callback) {
  if (arguments.length === 2) {
    callback = arguments[1];
  }
  var client = grpc.unary(IssueService.CreateIssue, {
    request: requestMessage,
    host: this.serviceHost,
    metadata: metadata,
    transport: this.options.transport,
    debug: this.options.debug,
    onEnd: function (response) {
      if (callback) {
        if (response.status !== grpc.Code.OK) {
          var err = new Error(response.statusMessage);
          err.code = response.status;
          err.metadata = response.trailers;
          callback(err, null);
        } else {
          callback(null, response.message);
        }
      }
    }
  });
  return {
    cancel: function () {
      callback = null;
      client.close();
    }
  };
};

IssueServiceClient.prototype.getIssues = function getIssues(requestMessage, metadata, callback) {
  if (arguments.length === 2) {
    callback = arguments[1];
  }
  var client = grpc.unary(IssueService.GetIssues, {
    request: requestMessage,
    host: this.serviceHost,
    metadata: metadata,
    transport: this.options.transport,
    debug: this.options.debug,
    onEnd: function (response) {
      if (callback) {
        if (response.status !== grpc.Code.OK) {
          var err = new Error(response.statusMessage);
          err.code = response.status;
          err.metadata = response.trailers;
          callback(err, null);
        } else {
          callback(null, response.message);
        }
      }
    }
  });
  return {
    cancel: function () {
      callback = null;
      client.close();
    }
  };
};

exports.IssueServiceClient = IssueServiceClient;

