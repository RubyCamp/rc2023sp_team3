require 'dxruby'
 Window.bgcolor = C_CYAN
 Window.caption = "島根への旅"
 font = Font.new(32)
 font = Font.new(32)
Window.loop do
 Window.draw_font(0, 400, "東京", font, {:color => C_BLACK})
 Window.draw_font(500, 400, "出雲大社", font, {:color => C_BLACK})
end