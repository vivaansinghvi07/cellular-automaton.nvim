local M = {
  fps = 40,
}

local swap_cells = function(grid, x1, y1, x2, y2)
  grid[x1][y1], grid[x2][y2] = grid[x2][y2], grid[x1][y1]
end

M.update = function(grid)

  for y = 1, #grid, 1 do
    if y % 2 == 1 then
      for x = 1, #grid[1] - 1, 1 do
        swap_cells(grid, y, x, y, x+1)
      end
    else
      for x = #grid[1] - 1, 1, -1 do
        swap_cells(grid, y, x, y, x+1)
      end
    end
  end
  return true

end

return M
