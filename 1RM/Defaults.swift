/// Copyright © 2020 Oliver Lau <oliver@ersatzworld.net>

import Foundation

let WeightUnits: [String] = [
    "kg",
    "lbs"
]
let DefaultMassUnit: String = Locale.current.usesMetricSystem
    ? "kg"
    : "lbs"
let DefaultBarWeight: Double = Locale.current.usesMetricSystem
    ? 20
    : 44.0
let DefaultPlates: [Double] = Locale.current.usesMetricSystem
    ? [50, 25, 20, 15, 10, 5, 2.5, 2, 1.5, 1.25, 0.5]
    : [110.23, 55.12, 44.09, 33.07, 22.05, 11.02, 5.51, 4.41, 3.31, 2.2, 1.1]

let DefaultPlateColors: [String] = [
    "black",
    "red",
    "blue",
    "yellow",
    "green",
    "white",
    "red",
    "blue",
    "yellow",
    "green",
    "white"
]

let MassUnitKey = "massUnit"
let BarWeightKey = "barWeight"
let WeightKey = "weight"
let RepsKey = "reps"
let PlatesKey = "plates"
