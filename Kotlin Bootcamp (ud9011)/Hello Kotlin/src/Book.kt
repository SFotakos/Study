import kotlin.random.Random

fun main(args: Array<String>){
    var book = Book("Game of Thrones", "George RR Martin", "1996")
    println(book.getBookPair())
    println(book.getBookTriplet())

    val (title1, author1) = book.getBookPair()
    println("Here is your book $title1 written by $author1")
    val (title2, author2, year) = book.getBookTriplet()
    println("Here is your book $title2 written by $author2 in $year")


    val allBooks = setOf("Macbeth", "Romeo and Juliet", "Hamlet", "A Midsummer Night's Dream")
    val library = mapOf("Shakespeare" to allBooks)
    println(library.any { it.value.contains("Hamlet") })

    val moreBooks = mutableMapOf<String, String>("Wilhelm Tell" to "Schiller")
    moreBooks.getOrPut("Jungle Book") { "Kipling" }
    moreBooks.getOrPut("Hamlet") { "Shakespeare" }
    println(moreBooks)

    val puppy = Puppy()
    val puppyBook = Book("Oliver Twist", "Charles Dickens", "1837")

    while (puppyBook.pages > 0) {
        puppy.playWithBook(puppyBook)
        println("${puppyBook.pages} left in ${puppyBook.title}")
    }
    println("Sad puppy, no more pages in ${puppyBook.title}. ")

}

open class Book (val title: String, val author: String, var year: String) {

    private var currentPage = 1
    var pages = 150

    open fun readPage() {
        currentPage++
    }

    fun getBookPair(): Pair<String, String> {
        return title to author
    }

    fun getBookTriplet() : Triple<String, String, String>{
        return Triple(title, author, year)
    }
}

class eBook(title: String, author: String, year: String, var format: String = "text"): Book(title, author, year) {

    private var wordCount = 0

    override fun readPage() {
        wordCount + 250
    }
}

fun Book.getWeight() = { pages*2.5}
fun Book.tornPages(torn: Int) = if (pages >= torn) pages -= torn else pages = 0

class Puppy() {
    fun playWithBook(book: Book) {
        book.tornPages(Random.nextInt(12))
    }
}

