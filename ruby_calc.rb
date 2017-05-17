# Ruby Calculator
# Standard 10 key functionality

# @ops = [+, -, *, /]
# if x = 0 || x/x = 1
#   then puts 'input is valid'
#   else
#   quit
# if y = 0 || y/y = 1
#   then puts 'input is valid'
def start_menu
  puts '---Welcome to Ruby Calculator---'
  puts
    puts 'Please Enter First Value'
    x = gets.to_f
    puts
    puts 'Please Enter Operation'
    ops = gets.strip
    puts
    puts 'Please Enter Second Value'
    y = gets.to_f
    puts
end

def calc(x, y, ops)
  when ops == '+'
    sum = x + y
    puts sum

  when ops = '-'
    dif = x - y
    puts dif

  when ops = '*'
    prod = x * y
    puts prod

  when ops = '/'
    quot = x / y
    puts quot

  else
    puts 'Invalid Selection'
    start_menu
    
