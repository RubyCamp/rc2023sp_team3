class Teki
  def initialize
    @teki_img = Image.load("teki.png")
    @x = 0
    @y = 100
    @x_size = 0.1
    @y_size = 0.1
  end

  
  def play
    @teki_image = Window.draw_scale(@x, @y, @teki_img, @x_size, @y_size)
    @x += 2
    @x_size += 0.001
    @y_size += 0.001

  end
end