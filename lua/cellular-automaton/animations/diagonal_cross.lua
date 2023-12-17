local M = {
  fps = 20,
}

local swap_cells = function(grid, x1, y1, x2, y2)
  grid[x1][y1], grid[x2][y2] = grid[x2][y2], grid[x1][y1]
end

M.update = function(grid)

  -- apply effect for uphill diagonals
  for y = #grid[1] - 1, 1, -1 do
    for x = 3 + y % 2, #grid, 2 do
      swap_cells(grid, x, y, x-1, y+1)
    end
  end

  for y = #grid[1] - 1, 1, -1 do
    for x = 2 - y % 2, #grid - 1, 2 do
      swap_cells(grid, x, y, x+1, y+1)
    end
  end

  return true

end

return M
