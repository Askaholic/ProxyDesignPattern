(* car.ml
   Rohan Weeden
   5/2/2017
   Module Driver
     This module includes a definition for class driver and for exception
   DriverException.
   Used to demonstrate the Proxy design pattern.
*)

exception DriverException of string

class driver name age =
  object(self)
    val name_ : string = name
    val mutable age_ : int = age
    method getAge = age_
    method incAge = age_ <- age_ + 1
    method getName = name_
  end
