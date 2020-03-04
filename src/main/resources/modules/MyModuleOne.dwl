%dw 2.0
import dw::core::Strings
fun capitalizeKey(value:String) = Strings::capitalize(value) ++ "MODULEADDINGSTRING"
---
payload mapObject ((value, key) ->
    {
      (capitalizeKey(key as String)) : value
    }
  )