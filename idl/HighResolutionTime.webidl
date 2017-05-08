typedef double DOMHighResTimeStamp;

[Exposed=(Window,Worker)]
interface Performance : EventTarget {
    DOMHighResTimeStamp now();
    serializer = {attribute};
};

[NoInterfaceObject,
 Exposed=(Window,Worker)]
interface GlobalPerformance {
    [Replaceable]
    readonly attribute Performance performance;
};

Window implements GlobalPerformance;

WorkerGlobalScope implements GlobalPerformance;

