clear variables
clc

celsius = input("Enter temperature in celsius:");
fahrenheit = ConvertToFahrenheit(celsius);
fprintf("Celsius: %f\nFahrenheit: %f\n", celsius, fahrenheit)


function fahrenheit = ConvertToFahrenheit(celsius)

fahrenheit = (celsius*1.8)+32;

end