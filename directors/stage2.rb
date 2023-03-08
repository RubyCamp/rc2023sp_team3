module Directors
    #ゲーム本体シーン
   class Stage2 < Base 
   
       def initialize
           super
         @font = Font.new(32)
       end


        def render_frame
            Window.draw_font(0, 400, "東京", @font, {:color => C_WHITE})
            Window.draw_font(650, 400, "出雲大社", @font, {:color => C_WHITE})
        end
 end
end