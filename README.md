mongo-objectid-objc
===================

Generate unique MongoDB ObjectIDs in iOS.


Usage:

```objc
// Create a new unique id:
ObjectID _id = [MongoID id];
NSString *str = [MongoID stringWithId: _id];
NSLog(@"ID: %@", str);


// And get it back again:
ObjectId = [MongoID idWithString: str];


```