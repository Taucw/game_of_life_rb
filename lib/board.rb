class Board

  def initialize(grid)
    @grid = grid
  end

  def neighbors(x, y)
    [
      top_values(y-1, x),
      arround_values(y, x),
      bottom_values(y+1, x)
    ].flatten.compact
  end
  def top_values y, x
    (x-1..x+1).map { |_x| wrapper(y, _x) { @grid[y].slice(_x) } }
  end
  alias_method :bottom_values, :top_values
  def arround_values y, x
    [wrapper(y, x-1) { @grid[y].slice(x-1) }, wrapper(y, x+1) { @grid[y].slice(x+1) }]
  end
  def wrapper y, x, &block
    return nil if out?(y, x)
    yield
  end
  def out?(y, x) (x > xmax or x < min) or (y > ymax or y < min) end
  def xmax() @grid[0].size end
  def ymax() @grid.size end
  def min() 0 end
end