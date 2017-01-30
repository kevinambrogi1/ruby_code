def mileage(miles_driven, gas_used)
  if gas_used == 0
    return 0.0
  else
    return miles_driven / gas_used
  end
end

trip_mileage = mileage(400, 12)
puts "You #{trip_mileage} MPG on this trip!"

lifetime_mileage = mileage(11432, 366)
puts "You #{lifetime_mileage} MPG on this car!"

trip_mileage = mileage(400, 0)
puts "You #{trip_mileage} MPG on this trip!"
