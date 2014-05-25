
def calculate_fibonacci(values_arry)
	values_arry << (values_arry[-1] + values_arry[-2])
end

def am_i_even?(value)
  value%2 == 0
end

def sum_of_values(values)
  values.inject(:+)
end

#setup initial 2 values
values_array = Array.new
values_array << 1
values_array << 2

while values_array[-1] < 4000000 do 
	values_array = calculate_fibonacci(values_array)
end

total = 0
values_array.each do |item|
	if am_i_even?(item) then total = total + item end
end

puts total