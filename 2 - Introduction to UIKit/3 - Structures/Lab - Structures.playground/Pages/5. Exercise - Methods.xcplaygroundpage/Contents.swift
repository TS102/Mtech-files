/*:
## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
}
var description = Book(title: "I am Number four", author: "Jobie Hughes & James Frey", pages: 337, price: 9.99)
print("The book is called \(description.title) by \(description.author) it has \(description.pages) pages and costs \(description.price) dollars.")

//:  A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    mutating func addLike() {
        likes += 1
    }
}
var socialPost = Post(message: "Hello World", likes: 20, numberOfComments: 3)
socialPost.addLike()
socialPost.addLike()
