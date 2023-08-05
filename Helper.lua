function tablelength(T)
  local count = 0
  
if isEmpty(T) then return count end
  
  for _ in pairs(T) do count = count + 1 end
  return count
end

function isEmpty(T)
  return T == nil or T == {}
end

function create2DArray(width, height, fillFunction)  
  local grid = {}
  for i = 1, height do
    grid[i] = {}
    for j = 1, width do
      grid[i][j] = fillFunction() -- Fill the values here
    end
  end
  
  return grid
end