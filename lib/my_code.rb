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
  new = 0
  i = 0
  while i < array.length do
    new = yield(starting_point, array[i])
    i += 1
  end
  new
end
