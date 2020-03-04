%dw 2.0
import dw::core::Strings
var offSet = -7
var name = "MyData"
ns mynamespace http://acme.com/bar
fun functionTwo(value:String) = Strings::capitalize(value) ++ "MODULEADDINGSTRING"
fun functionOne(myInput: String) = myInput ++ "_"
fun functionThree(value: DateTime) = value ++ offSet
---
payload mapObject ((value, key) ->
    {
      (functionTwo(key as String)) : value
    }
  )