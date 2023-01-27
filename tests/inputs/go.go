/*Test code: 
https://go101.org/article/memory-layout.html*/

package main
import ("fmt")

func main() {
    day: = 4

      switch day {
      case 1:
        fmt.Println("Monday")
      case 2:
        fmt.Println("Tuesday")
      case 3:
        fmt.Println("Wednesday")
    }

    func f0() float64 {
      return 1
    }
    func f1()(float64, float64) {
      return 1, 2
    }

    func myMessage() {
      fmt.Println("I just got executed!")
    }

    // These lines compile okay.
    f2(f0(), 123)
    f2(f1())
    fmt.Println(f1())
    _ = complex(f1())
    _ = complex(T {}.m())
    f2(I(T {}).m())

    var student1 string
    student = "John"
    fmt.Println(student1)

    package main

    if num:= 9;num < 0 {
      fmt.Println(num, "is negative")
    } else if num < 10 {
      fmt.Println(num, "has 1 digit")
    } else {
      fmt.Println(num, "has multiple digits")
    }

    var a = map[string] string {
      "brand": "Ford",
      "model": "Mustang",
      "year": "1964"
    }

    b: = map[string] int {
      "Oslo": 1,
      "Bergen": 2,
      "Trondheim": 3,
      "Stavanger": 4
    }

      fmt.Printf("a\t%v\n", a)
    fmt.Printf("b\t%d\n", b)

    type(
      T1 struct {
        v uint64
      }

      T2 struct {
        _ int16
        x T1
        y * T1
      }

      T3 struct {
        _ int16
        x[6] int64
        y * [6] int64
      }
    )

    adj: = [2] string {
      "big", "tasty"
    }

    fruits: = [3] string {
      "apple", "orange", "banana"
    }

    for i:= 0; i < len(adj); i++{
      for j:= 0; j < len(fruits); j++{
        fmt.Println(adj[i], fruits[j])
        if j == 3 {
          break
        }

        var a int64 // a is safe
        var b T1 // b.v is safe
        var c[6] int64 // c[0] is safe

        var d T2 // d.x.v is unsafe
        var e T3 // e.x[0] is unsafe

        func f() {
          var f int64 // f is safe
          var g = [] int64 {
              5: 0
            } // g[0] is safe

          var h = e.x[: ] // h[0] is unsafe

          // Here, d.y.v and e.y[0] are both safe,
          // for *d.y and *e.y are both allocated.
          d.y = new(T1)
          e.y = & [6] int64 {}

          _, _, _ = f, g, h
        }

        // In fact, all elements in c, g and e.y.v are
        // safe to be accessed atomically, though Go
        // official documentation never makes the guarantees.
      }
    } 