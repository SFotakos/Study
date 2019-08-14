package Spices

fun main (args: Array<String>) {

}

sealed class Spice(val name: String, val spiciness: String = "mild", color: SpiceColor) : SpiceColor by color {
    init {
        printSpiceBirthCertificate()
    }

    val heat: Int
        get() {
            return when (spiciness) {
                "mild" -> 1
                "medium" -> 3
                "spicy" -> 5
                "very spicy" -> 7
                "extremely spicy" -> 10
                else -> 0
            }
        }

    fun printSpiceBirthCertificate() =
        println("A spice named $name has been born and it's spiciness is $spiciness")

    fun makeSalt() = InnerSpice("Salt")

    abstract fun prepareSpice()
}

class Curry(name: String, spiciness: String, color: SpiceColor = YellowSpiceColor)
    : Spice(name, spiciness, color), Grinder {

    override fun prepareSpice() {
        grind()
    }

    override fun grind() {
    }

}

interface Grinder {
    fun grind()
}

interface SpiceColor {
    var color : Color

}

object YellowSpiceColor : SpiceColor {
    override var color: Color = Color.YELLOW

}

enum class Color(val rgb: Int) {
    RED(0xFF0000), GREEN(0x00FF00), BLUE(0x0000FF), YELLOW(0xFFFF00);
}