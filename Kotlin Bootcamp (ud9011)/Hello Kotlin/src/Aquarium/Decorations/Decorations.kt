package Aquarium.Decorations

import Spices.Curry
import Spices.Spice
import Spices.YellowSpiceColor

fun main (args: Array<String> ){
    makeDecorations()

    val spiceCabinet = listOf(SpiceContainer(Curry("Yellow Curry", "mild")),
        SpiceContainer(Curry("Red Curry", "medium")),
        SpiceContainer(Curry("Green Curry", "spicy")))

    for(element in spiceCabinet) println(element.label)
}

fun makeDecorations() {
    val d1 = Decorations("granite")
    println(d1)

    val d2 = Decorations("slate")
    println(d2)

    val d3 = Decorations("slate")
    println(d3)

    println(d1.equals(d2))
    println(d3.equals(d2))

    val d4 = d3.copy()
    println(d3)
    println(d4)

    val d5 = Decorations2("crystal", "wood", "diver")
    println(d5)

    val (rock: String, wood: String, diver: String) = d5
    println(rock)
    println(wood)
    println(diver)
}

data class Decorations(val rocks: String) {

}

data class Decorations2(val rocks: String, val wood: String, val diver: String){

}

data class SpiceContainer(val spice: Spice){
    val label : String
        get() = spice.name
}