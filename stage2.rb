class Stage2 
 def initialize
  @font = Font.new(32)
 end
 def play
  Window.draw_font(0, 400, "東京", @font, {:color => C_WHITE})
  Window.draw_font(500, 400, "出雲大社", @font, {:color => C_WHITE})
 end
end