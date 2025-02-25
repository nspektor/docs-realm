// This document represents a CoffeeDrink object
let drink: Document = [ "name": "Bean of the Day", "beanRegion": "Timbio, Colombia", "containsDairy": "false", "partition": "Store 43"]

// Insert the document into the collection
collection.insertOne(drink) { result in
    switch result {
    case .failure(let error):
        print("Call to MongoDB failed: \(error.localizedDescription)")
        return
    case .success(let objectId):
        // Success returns the objectId for the inserted document
        print("Successfully inserted a document with id: \(objectId)")
    }
}
