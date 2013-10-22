class Board

  alias_method :bottom_values, :top_values


  def initialize(grid)
    @grid = grid
  end

  def neighbors(x, y)
    [
      top_values(x, y-1),
      around_values(x, y),
      bottom_values(x, y+1)
    ].flatten.compact
  end

  def top_values x, y
    (x-1..x+1).map { |_x| fetch(_x, y) }
  end

  def around_values x, y
    [fetch(x-1, y), fetch(x+1, y)]
  end

  def fetch x, y
    out?(x, y) ? nil : @grid[y].slice(x)
  end

  def out?(x, y) (x > xmax or x < min) or (y > ymax or y < min) end
  def xmax() @grid[0].size end
  def ymax() @grid.size end
  def min() 0 end
end