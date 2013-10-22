class Board

  def initialize(grid)
    @grid = grid
  end

  def neighbors(x, y)
    [
      value(y-1, x-1..x+1),
      value(y, x-1), value(y, x+1),
      value(y+1, x-1..x+1)
      # @grid[y-1].slice(left(x)..right(x)),
      # @grid[y].slice(left(x)),@grid[y].slice(right(x)),
      # @grid[y+1].slice(left(x)..right(x)),
    ].flatten
      # @grid[y-1][x-1, 3],
      # @grid[y][x-1], @grid[y][x+1],
      # @grid[y+1][x-1, 3]
#    ].flatten
  end
  def value y, x
    return nil if x > max or x < min
    @grid[y].slice(x)
  end
  def max() @grid[0].size end
  def min() 0 end
  def left(x)
  end
end