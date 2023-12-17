local M = {
  fps = 20,
}

local swap_cells = function(grid, x1, y1, x2, y2)
  grid[x1][y1], grid[x2][y2] = grid[x2][y2], grid[x1][y1]
end

M.update = function(grid)

  for x = 1, #grid[1], 1 do
    if x % 2 == 1 then
      for y = 1, #grid - 1, 1 do
        swap_cells(grid, y, x, y+1, x)
      end
    else
      for y = #grid - 1, 1, -1 do
        swap_cells(grid, y, x, y+1, x)
      end
    end
  end
  return true

end

return M
