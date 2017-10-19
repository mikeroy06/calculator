def greeting

  name = gets "Hey! What is your name: "

  puts "It is nice to meet you #{name}.  I am a simple calculator application.  \n
  I can add, subtract, multiply, and divide.\n"

  return name

end


def request_calculation_type

  operation_selection = gets "Type 1 to add, 2 to subtract, 3 to multiply, or 4 to divide two numbers: "

  if operation_selection == 1 
    return "add"
  elsif operation_selection == 2
    return "subtract"
  elsif operation_selection == 3
    return "multiply"
  elsif operation_selection == 4
    return "divide"
  else return "error"

end

# This method performs the requested calculation
# It returns the result of the calculation
def calculate_answer(operator, a, b)

  if operator == "add"
    return result= a + b
  elsif operator == "subtract"
    return result = a - b
  elsif operator == "multiply"
    return result = a * b
  elsif operator == "divide"
    return result = a / b

  end

end

name = greeting
run_calculator = 1

while run_calculator == 1

  current_calculation = request_calculation_type()

  if current_calculation == "error"

    puts "I do not understand this type of calculation... Can we try again?"  

  else

    first_number = gets "What is the first number you would you like to #{calc_type}: "
    second_numer = gets "What is the second number you would like to #{calc_type}: "

    answer = calculate_answer(current_calculation, first_number, second_number)

    puts "The answer is #{answer}"
    run_calculator = gets "Type 1 to run another calcution or 2 to end: "

  end
end
ECHO is on.
