# Ruby Calculator
# Standard 10 key functionality

# @ops = [+, -, *, /]
# if x = 0 || x/x = 1
#   then puts 'input is valid'
#   else
#   quit
# if y = 0 || y/y = 1
#   then puts 'input is valid'

@x = []
@y = []
@op = []

def main_menu
  puts '---Welcome to Ruby Calculator---'
  puts
  puts 'Press 1 to do math things.'
  puts 'Press 2 to exit.'
end

def equation_calc
  puts
  puts 'Please enter the first operand.'
  @x = gets.chomp.to_f
  puts
  puts 'Please enter the second operand.'
  @y = gets.chomp.to_f
  execute_op
end

def execute_op
  puts
  puts 'Please enter desired operation (Ex. +, -, *, /).'
  @op = gets.strip
  puts
  case @op
    when('+')
      sum = @x + @y
      puts 'The sum is '
      puts sum
    when('-')
      difference = @x - @y
      puts 'The difference is '
      puts difference
    when('*')
      product = @x * @y
      puts 'The product is '
      puts product
    when('/')
      quotient = @x / @y
      puts 'The quotient is'
      puts quotient
  end
  puts
end

while true
  main_menu
  puts
  input_m_menu = gets.to_i
    case input_m_menu
    when 1
      equation_calc
    when 2
      exit
    else
      puts 'Invalid Selection'
    end
end
