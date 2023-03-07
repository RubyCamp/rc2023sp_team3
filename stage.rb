require "DXRuby"

Window.width = 1400
Window.height= 800
Window.bgcolor = C_BLUE
Window.caption = "島根への旅"
image = Image.load('block.png')
font = Font.new(32)

Window.loop do
    Window.draw_font(500, 400, "ようこそ、はにわのせかいへ、Nキーでスタートしよう。", font, {:color => C_WHITE})
    Window.draw(1, 600, image)

    if Input.key_down?(K_N)
      break                # breakで loopを抜ける
    end
end
Window.loop do
    Window.draw_font(700, 400, "はにわのせかい", font, {:color => C_GREEN})
    Window.draw_font(20, 20, "（ESCキーで終了）", font, {:color => C_RED})
  
    if Input.key_down?(K_ESCAPE)
      exit                 # exit でプログラムを終了する
    end
end

