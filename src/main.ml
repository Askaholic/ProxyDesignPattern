(* car.ml
   Rohan Weeden
   5/2/2017
*)

open Car
open Proxy_car
open Driver

let austin = new driver "Austin" 12;;
let victor = new driver "Victor" 24;;

let austinsCar = new proxy_car austin;;
let victorsCar = new proxy_car victor;;

try
  austinsCar#driveCar
with e ->
  let msg = Printexc.to_string e in
  print_string (msg ^ "\n")
;;

victorsCar#driveCar;;
