class Teki < Sprite
  def initialize
    self.collision = [200,200,100]
    @teki_img = Image.load("teki.png")
    @teki_img.set_color_key(C_WHITE)
    @x = -1000
    @y = 100
    @x_size = 0.02
    @y_size = 0.02
    super(@x,@y,@teki_img)
  end

  
  def play
    @teki_image = Window.draw_scale(@x, @y, @teki_img, @x_size, @y_size)
    if @x < 100
      flag = 0
    elsif @x > 700
      flag = 1
    end
    if flag == 0
     @x += 1 
    else
      @x -= 2
    end
    @x_size += 0.0005
    @y_size += 0.0005
    self.x = @x

  end
end