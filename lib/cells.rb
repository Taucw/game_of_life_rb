module LiveCell
  def self.to_s() 'o' end

  def self.next_generation(x, y, board)
    case board.neighbors(x,y).count(LiveCell)
    when 2..3 then self
    else DeadCell
    end
  end
end

module DeadCell
  def self.to_s() '.' end

  def self.next_generation(x, y, board)
    case board.neighbors(x,y).count(LiveCell)
    when 3 then LiveCell
    else self
    end
  end
end
