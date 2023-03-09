module Directors
    #ゲーム本体シーン
   class Stage2 < Base 
<<<<<<< HEAD
        require_relative '../maps/map'
   
=======
      require_relative '../maps/map'
<<<<<<< HEAD
>>>>>>> 2ae360e9913e1697c4c8317e71e26f4a685e33c6
=======
      require_relative '../charactor/player'

>>>>>>> 253dc13675e91018bd011c27ccc0ba55f5880223
       def initialize
           super
         @bg_img1 = Image.load("images/tokyo.png")
         @bg_img2 = Image.load("images/izumo.png")
         @font = Font.new(32)
         @block = Map.new
         @player = Player_move.new
       end

        def render_frame
            Window.draw_font(0, 400, "東京", @font, {:color => C_WHITE})
            Window.draw_font(650, 400, "出雲大社", @font, {:color => C_WHITE})
<<<<<<< HEAD
=======
            Window.draw_scale(-260, 100, @bg_img1, 0.2, 0.2)
            Window.draw_scale(320, 150, @bg_img2, 0.2, 0.2)
>>>>>>> 2ae360e9913e1697c4c8317e71e26f4a685e33c6
            @block.block
        end
 end
end