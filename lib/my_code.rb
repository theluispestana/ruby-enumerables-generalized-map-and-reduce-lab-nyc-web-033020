# Your Code Here
def map (array)
  new = []
  i = 0
  while i < array.length do
    new << yield(array[i])
    i += 1
  end
  new
end

def reduce (array, starting_point = nil)
  if starting_point
    new = starting_point
  else
    new = array[0]
  end
  i = 0
  while i < array.length do
    new = yield(new, array[i])
    i += 1
  end
  new
end
