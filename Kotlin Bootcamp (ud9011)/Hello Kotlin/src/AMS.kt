import java.util.*

fun main(args: Array<String>) {
    println("Hello, ${args[0]}!")
    feedTheFish()

    var bubbles = 0
    while (bubbles < 50) {
        bubbles.inc()
    }

    repeat (2) {
        println("A fish is swimming")
    }

    canAddFish(10.0, listOf(3,3,3))
    canAddFish(8.0, listOf(2,2,2), hasDecorations = false)
    canAddFish(9.0, listOf(1,1,3), 3)
    canAddFish(10.0, listOf(), 7, true)
}

fun feedTheFish() {
    val day = randomDay()
    val food = fishFood(day)
    println("Today is $day and the fish eat $food")

    if (shouldChangeWater(day))
        println("Change the water today")
}

fun shouldChangeWater(
    day: String,
    temperature: Int = 22,
    dirty: Int = 20 ): Boolean {
    val isTooHot = temperature > 30
    val isDirty = dirty > 30
    val isSunday = day == "Sunday"

    return when {
        isTooHot(temperature) -> true
        isDirty(dirty) -> true
        isSunday(day) -> true
        else -> false
    }
}

fun isTooHot(temperature: Int) : Boolean  = temperature > 30
fun isDirty (dirty: Int) : Boolean = dirty > 30
fun isSunday(day: String) : Boolean  = day == "Sunday"

fun randomDay(): String {
    val week = listOf("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")
    return week[Random().nextInt(7)]
}

fun canAddFish (
    tankSize: Double,
    currentFish: List<Int>,
    fishSize: Int = 2,
    hasDecorations: Boolean = true ) : Boolean {

    return (tankSize * if (hasDecorations) 0.8 else 1.0) >= (currentFish.sum() + fishSize)
}

fun fishFood(day: String): String {
    return when (day) {
        "Monday" -> "flakes"
        "Tuesday" -> "pellets"
        "Wednesday" -> "red worms"
        "Thursday" -> "granules"
        "Friday" -> "mosquitoes"
        "Saturday" -> "lettuce"
        "Sunday" -> "plankton"
        else -> "fasting"
    }

}