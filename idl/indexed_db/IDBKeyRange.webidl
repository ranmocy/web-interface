interface IDBKeyRange {
    readonly    attribute any     lower;
    readonly    attribute any     upper;
    readonly    attribute boolean lowerOpen;
    readonly    attribute boolean upperOpen;
    static IDBKeyRange only (any value);
    static IDBKeyRange lowerBound (any lower, optional boolean open);
    static IDBKeyRange upperBound (any upper, optional boolean open);
    static IDBKeyRange bound (any lower, any upper, optional boolean lowerOpen, optional boolean upperOpen);
};
