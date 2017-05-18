
@x = []
@y = []
@op = []

def main_menu
  puts '---Welcome to Ruby Calculator---'
  puts
  puts 'Press 1 to do math things.'
  puts 'Press 2 to exit.'
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

def validate_number
  if ((@x =~ /(^(\d+)(\.)?(\d+)?)|(^(\d+)?(\.)(\d+))/ && @y =~ /(^(\d+)(\.)?(\d+)?)|(^(\d+)?(\.)(\d+))/) || (@x =~ /^[-+]?[0-9]+$/ && @y =~ /^[-+]?[0-9]+$/))
    #Henry did the regex, checks if operands are valid floats.
    @x = @x.to_f
    @y = @y.to_f
    execute_op
  else
    puts 'Invalid number'
    puts
  end
end

def equation_calc
  puts
  puts 'Please enter the first operand.'
  @x = gets.chomp
  puts
  puts 'Please enter the second operand.'
  @y = gets.chomp
  validate_number
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
