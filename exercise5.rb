

def convert_temp temp, unit
	
	if unit == "f"
		c = (temp - 32)*(5.0/9.0)		
		return "You entered #{temp} Fahrenheit, which is equal to #{c} Celsius"
	elsif unit == "c"
		f = temp*(9.0/5.0) + 32
		return "You entered #{temp} Celsius, which is equal to #{f} Fahrenheit"
	else
		return "Error: You didn't input 'f' or 'c'!"
	end
end

puts "Input a temperature in Fahrenheit or Celsius"
temp = gets.chomp.to_f

puts "Is that in Fahrenheit (f) or Celsius (c)?"
unit = gets.chomp.downcase

puts convert_temp(temp,unit)