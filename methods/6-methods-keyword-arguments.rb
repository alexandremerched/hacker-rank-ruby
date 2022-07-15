FORMULAS = {
  kelvin2celsius: ->(k) { k - 273.15 },
  kelvin2fahrenheit: ->(k) { 9/5 * (k - 273) + 32 },
  celsius2fahrenheit: ->(c) { 9/5 * c + 32 },
  celsius2kelvin: ->(c) { c + 271.15 },
  fahrenheit2celsius: ->(f) { (f - 32) / 1.8 },
  fahrenheit2kelvin: ->(f) { (f - 32) / 1.8 + 273.15 },
}

def convert_temp(temp, input_scale:, output_scale: 'celsius')
  return temp if input_scale == output_scale
  FORMULAS[:"#{input_scale}2#{output_scale}"].(temp)
end

p convert_temp(0, input_scale: "kelvin", output_scale: "celsius")
p convert_temp(393, input_scale: "kelvin", output_scale: "celsius")
p convert_temp(400, input_scale: "fahrenheit", output_scale: "celsius")
p convert_temp(333, input_scale: "fahrenheit", output_scale: "kelvin")