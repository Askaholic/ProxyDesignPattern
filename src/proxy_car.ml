(* car.ml
   Rohan Weeden
   5/2/2017
   Module Car
     This module includes a definition for class proxy_car
     Used to demonstrate the Proxy design pattern.
*)

open Car
open Driver

class proxy_car driver =
  object(self)
    inherit car_interface
    val driver_ = driver
    val car_ = new car
    method driveCar =
      let driverAge = driver_#getAge in
      if driverAge <= 16 then begin
        raise (DriverException (driver_#getName ^ " is too young to drive!"))
      end
      else begin
        let () = print_string (driver_#getName ^ ": ") in
        car_#driveCar
      end
  end
