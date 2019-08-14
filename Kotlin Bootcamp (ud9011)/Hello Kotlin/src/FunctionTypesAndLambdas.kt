fun main (args: Array<String>) {
    dirtyProcessor()
}

var dirty = 20
val waterFilter: (Int) -> Int = { dirty -> dirty / 2}
fun feedFish(dirty: Int) = dirty + 10

fun updateDirty(dirty: Int, operation: (Int) -> Int) : Int {
    val operationVal = operation(dirty)
    println(operationVal)
    return operationVal
}

fun dirtyProcessor() {
    dirty = updateDirty(dirty, waterFilter)
    dirty = updateDirty(dirty, ::feedFish)
    dirty = updateDirty(dirty) { dirty ->
        dirty + 50
    }
    dirty = updateDirty(dirty, { dirty ->
        dirty + 100
    }) // Para um só lambda, recomendado deixar.
}