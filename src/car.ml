(* car.ml
   Rohan Weeden
   5/2/2017
   Module Car
     This module includes class definitions for:
       carInterface
       car
       proxyCar
     Used to demonstrate the Proxy design pattern. Cars are defined via the
   interface in carInterface, and can be instantiated either through class car,
   or through class proxyCar if the car should keep track of a driver and check
   the age of the driver whenever the driveCar method is called.
*)

class virtual car_interface =
  object(self)
        method virtual driveCar : unit
  end

class car =
  object(self)
    inherit car_interface
    method driveCar =
      print_string "The car is driving\n"
  end
