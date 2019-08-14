fun main(args: Array<String>) {
    var currentTime = args[0]
    when (currentTime.toInt()){
        in 0..11 -> println ("Good morning, Kotlin")
        in 12..23 -> println("Good night, Kotlin")
        else -> println ("What kind of time is it!?")
    }
    println("Good ${when(args[0].toInt()) {in 0..11 -> "morning"
        in 12..23 -> "night"
        else -> "whatever"}}, Kotlin")
    println("Good ${if(args[0].toInt() < 12) "morning" else "night"}, Kotlin")
}