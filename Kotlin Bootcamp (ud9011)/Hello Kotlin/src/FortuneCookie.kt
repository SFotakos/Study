
fun main(args: Array<String>) {
    var fortune: String = "Random fortune"
    repeat (10) {
        fortune = getFortune(getBirthday())
        println("\nYour fortune is: $fortune")
    }

    while (!fortune.contains("Take it easy")){
        fortune = getFortune(getBirthday())
        println("\nYour fortune is: $fortune")
    }
}

fun getFortune(birthday: Int): String {
    val fortune = listOf(
        "You will have a great day!",
        "Things will go well for you today.",
        "Enjoy a wonderful day of success.",
        "Be humble and all will turn out well.",
        "Today is a good day for exercising restraint.",
        "Take it easy and enjoy life!",
        "Treasure your friends because they are your greatest fortune."
    )
    val index = when (birthday) {
        in 1..7 -> 5
        28, 31 -> 3
        else -> birthday.rem(fortune.size)
    }
    return fortune[index]
}

fun getBirthday(): Int  {
    print("Enter your birthday: ")
    return readLine()?.toIntOrNull() ?: 0
}
