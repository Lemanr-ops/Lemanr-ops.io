open System

let UseCalculator =
    printfn "Welcome to SimplyCalc, \nType any real number"
    let firstNo = Console.ReadLine()
    printfn "Choose math operation,\n may be + - * / ^ or root"
    let mutable operation = Console.ReadLine()
    printfn "Type the second value"
    let mutable nextNo = Console.ReadLine()
    let mutable answerUpdated =
        match operation with
        | "+" -> (float firstNo) + (float nextNo)
        | "-" -> (float firstNo) - (float nextNo)
        | "*" -> (float firstNo) * (float nextNo)
        | "/" -> (float firstNo) / (float nextNo)
        | "%" -> (float firstNo) % (float nextNo)
        | "^" -> (float firstNo) ** (float nextNo)
        | "root" -> (float firstNo) ** (1.0/(float nextNo))
        | _ -> failwith "Terrible, just terrible"
    answerUpdated


[<EntryPoint>]
UseCalculator