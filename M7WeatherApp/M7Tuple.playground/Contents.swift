import UIKit

// Tuples: work with multiple values at once

// tuples can assign different types
// have a fixed size
// can't grow or shrink
// can access by index
let a = (1, "2", 3.0)
a.0
a.1
a.2
//a.3

// array must be same type
var arr = [10, 20, 30]
arr[0]
arr[1]
arr[2]
arr.append(40)

// unnamed tuples: access by index
let scores = (100, 90, 75)
print(scores.0)
print(scores.1)
print(scores.2)
let (_, _, lastScores) = scores
//let (_, _, lastScores) = (scores.0, scores.1, scores.2)
print(lastScores)

// named tuples: access by index and name
let studentScores = (math: 100, english: 90, science: 75)
let studentScores1: (math: Int, english: Int, science: Int) = (100, 90, 75)
print(studentScores.0)
print(studentScores.math)

//let(_, _, scienceProject) = studentScores
let(_, _, scienceProject) = (studentScores.math, studentScores.english, studentScores.science)
print(scienceProject)

let q5 = ("Swift", 5)
print(q5.0)
print(q5.1)

let q6 = (language: "Swift", version: 5)
print(q6.language)
print(q6.version)

var point = (x: 10, y: 20)
point.y = 99
print(point)

let result = (tip: 8.0, total: 108.0, per: 54.0)
let (_, total, _) = result
print(total)
