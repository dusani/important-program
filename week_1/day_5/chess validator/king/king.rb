
class King
  def initialize(x, y, color)
    @x = x
    @y = y
    @color = color
  end

  def can_move?(final_x, final_y)
    if ((final_x == @x) && (final_y - @y).abs == 1)  
      "yes"
    elsif (final_y == @y) && (final_x - @x).abs == 1
      "yes"
    elsif (final_x - @x).abs == 1 && (final_y - @y).abs == 1
      "yes"       
    else
      "no"

    end
  end
end