def map(array)
  new =[]
  i= 0
  while i < array.size do
    new.push(yield(array[i]))
    i += 1
  end
  new
end

def reduce(array, starting_point=nil)
  if starting_point
    num1 = starting_point
    i = 0
  else
    num1 = array[0]
    i= 1
    
  end
    while i < array.size
    sum = yield(num1, array[i])
    i += 1
    end
   sum
end