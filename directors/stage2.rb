module Directors
    #ゲーム本体シーン
   class Stage2 < Base 
      require_relative '../maps/map'

       def initialize
           super
         @bg_img1 = Image.load("images/tokyo.png")
         @bg_img2 = Image.load("images/izumo.png")
         @font = Font.new(22)
         @block = Map.new
         @teki = Teki.new
         @music1 = Music.new
         @ending_director = Ending.new
       end

        def render_frame
          if @block.clear?
            transition_scene(@ending_director)		
          end
            Window.draw_font(0, 400, "東京", @font, {:color => C_WHITE})
            Window.draw_font(650, 120, "出雲大社", @font, {:color => C_WHITE})
            Window.draw_scale(-260, 100, @bg_img1, 0.2, 0.2)
            Window.draw_scale(365, -300, @bg_img2, 0.2, 0.2)
            @block.block
            @teki.play
            @music1.play
        end
 end
end