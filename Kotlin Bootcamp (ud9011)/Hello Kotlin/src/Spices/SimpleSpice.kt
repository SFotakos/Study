package Spices
fun main(args: Array<String>){
    val simpleSpice = SimpleSpice()
    println("Spices.Spice name: ${simpleSpice.name}\n" +
            "Spices.Spice heat: ${simpleSpice.heat}")

    val spices1 = listOf(
        InnerSpice("curry", "mild"),
        InnerSpice("pepper", "medium"),
        InnerSpice("cayenne", "spicy"),
        InnerSpice("ginger", "mild"),
        InnerSpice("red curry", "medium"),
        InnerSpice("green curry", "mild"),
        InnerSpice("hot pepper", "extremely spicy")
    )

    val cayenne = InnerSpice("cayenne", spiciness = "spicy")
    val spicelist = spices1.filter {it.heat < 5}
    for (spice in spicelist) {
        spice.printSpiceBirthCertificate()
    }
}

class SimpleSpice {
    var name : String = "curry"
    var spiciness : String = "mild"
    val heat: Int
        get() {return 5 }
}

class InnerSpice(val name: String, val spiciness: String = "mild") {

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
}

