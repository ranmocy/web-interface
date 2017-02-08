/**
 * interface IDBObjectStore {
 *     readonly    attribute DOMString      name;
 *     readonly    attribute any            keyPath;
 *     readonly    attribute DOMStringList  indexNames;
 *     readonly    attribute IDBTransaction transaction;
 *     readonly    attribute boolean        autoIncrement;
 *     IDBRequest put (any value, optional any key);
 *     IDBRequest add (any value, optional any key);
 *     IDBRequest delete (any key);
 *     IDBRequest get (any key);
 *     IDBRequest clear ();
 *     IDBRequest openCursor (optional any range, optional IDBCursorDirection direction = "next");
 *     IDBIndex   createIndex (DOMString name, (DOMString or sequence<DOMString>) keyPath, optional IDBIndexParameters optionalParameters);
 *     IDBIndex   index (DOMString name);
 *     void       deleteIndex (DOMString indexName);
 *     IDBRequest count (optional any key);
 * };
 */
var IDBObjectStore = function () {};

/**
 * @type {string}
 * @readonly
 */
IDBObjectStore.prototype.name = "";

/**
 * @type {*}
 * @readonly
 */
IDBObjectStore.prototype.keyPath = {};

/**
 * @type {DOMStringList}
 * @readonly
 */
IDBObjectStore.prototype.indexNames = new DOMStringList();

/**
 * @type {IDBTransaction}
 * @readonly
 */
IDBObjectStore.prototype.transaction = new IDBTransaction();

/**
 * @type {boolean}
 * @readonly
 */
IDBObjectStore.prototype.autoIncrement = false;

/**
 * @param {*} value
 * @param {*} [key]
 * @returns {IDBRequest}
 */
IDBObjectStore.prototype.put = function (value, key) { return new IDBRequest(); };

/**
 * @param {*} value
 * @param {*} [key]
 * @returns {IDBRequest}
 */
IDBObjectStore.prototype.add = function (value, key) { return new IDBRequest(); };

/**
 * @param {*} key
 * @returns {IDBRequest}
 */
IDBObjectStore.prototype.delete = function (key) { return new IDBRequest(); };

/**
 * @param {*} key
 * @returns {IDBRequest}
 */
IDBObjectStore.prototype.get = function (key) { return new IDBRequest(); };

/**
 * @returns {IDBRequest}
 */
IDBObjectStore.prototype.clear = function () { return new IDBRequest(); };

/**
 * @param {*} [range]
 * @param {IDBCursorDirection} [direction='next']
 * @returns {IDBRequest}
 */
IDBObjectStore.prototype.openCursor = function (range, direction) { return new IDBRequest(); };

/**
 * @param {string} name
 * @param {string|string[]} keyPath
 * @param {IDBIndexParameters} [optionalParameters]
 * @returns {IDBIndex}
 */
IDBObjectStore.prototype.createIndex = function (name, keyPath, optionalParameters) { return new IDBIndex(); };

/**
 * @param {string} name
 * @returns {IDBIndex}
 */
IDBObjectStore.prototype.index = function (name) { return new IDBIndex(); };

/**
 * @param {string} indexName
 * @returns {void}
 */
IDBObjectStore.prototype.deleteIndex = function (indexName) { return ; };

/**
 * @param {*} [key]
 * @returns {IDBRequest}
 */
IDBObjectStore.prototype.count = function (key) { return new IDBRequest(); };
