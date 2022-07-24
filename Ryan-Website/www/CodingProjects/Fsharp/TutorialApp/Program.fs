// Learn more about F# at http://docs.microsoft.com/dotnet/fsharp

open System

let LetsAdd a b = a + b
let LetsMultiply a b = a*b


[<EntryPoint>]
let main argv =
    let a = 2
    let b = 4
    let d = 5
    let c = LetsAdd a b
    let msum = c |> LetsMultiply d    
    printfn "your number is %i" msum
    0