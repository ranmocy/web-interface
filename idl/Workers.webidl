[Exposed=Worker] 
interface WorkerGlobalScope : EventTarget {
  readonly attribute WorkerGlobalScope self;
  readonly attribute WorkerLocation location;
  readonly attribute WorkerNavigator navigator;
  void importScripts(USVString... urls);

  attribute OnErrorEventHandler onerror;
  attribute EventHandler onlanguagechange;
  attribute EventHandler onoffline;
  attribute EventHandler ononline;
  attribute EventHandler onrejectionhandled;
  attribute EventHandler onunhandledrejection;
};

[Global=(Worker,DedicatedWorker),Exposed=DedicatedWorker]
interface DedicatedWorkerGlobalScope : WorkerGlobalScope {
  readonly attribute DOMString name;

  void postMessage(any message, optional sequence<object> transfer = []);

  void close();

  attribute EventHandler onmessage;
  attribute EventHandler onmessageerror;
};

[Global=(Worker,SharedWorker),Exposed=SharedWorker]
interface SharedWorkerGlobalScope : WorkerGlobalScope {
  readonly attribute DOMString name;

  void close();

  attribute EventHandler onconnect;
};

[NoInterfaceObject, Exposed=(Window,Worker)]
interface AbstractWorker {
  attribute EventHandler onerror;
};

[Constructor(USVString scriptURL, optional WorkerOptions options), Exposed=(Window,Worker)]
interface Worker : EventTarget {
  void terminate();

  void postMessage(any message, optional sequence<object> transfer = []);
  attribute EventHandler onmessage;
  attribute EventHandler onmessageerror;
};

dictionary WorkerOptions {
  WorkerType type = "classic";
  RequestCredentials credentials = "omit"; // credentials is only used if type is "module"
  DOMString name = "";
};

enum WorkerType { "classic", "module" };

Worker implements AbstractWorker;

[Constructor(USVString scriptURL, optional (DOMString or WorkerOptions) options),
 Exposed=(Window,Worker)]
interface SharedWorker : EventTarget {
  readonly attribute MessagePort port;
};
SharedWorker implements AbstractWorker;

[NoInterfaceObject, Exposed=(Window,Worker)]
interface NavigatorConcurrentHardware {
  readonly attribute unsigned long long hardwareConcurrency;
};

[Exposed=Worker]
interface WorkerNavigator {};
WorkerNavigator implements NavigatorID;
WorkerNavigator implements NavigatorLanguage;
WorkerNavigator implements NavigatorOnLine;
WorkerNavigator implements NavigatorConcurrentHardware;

[Exposed=Worker]
interface WorkerLocation {
  stringifier readonly attribute USVString href;
  readonly attribute USVString origin;
  readonly attribute USVString protocol;
  readonly attribute USVString host;
  readonly attribute USVString hostname;
  readonly attribute USVString port;
  readonly attribute USVString pathname;
  readonly attribute USVString search;
  readonly attribute USVString hash;
};

