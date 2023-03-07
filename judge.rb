class Judge
    def initialize(player,teki)
        @player = player
        @teki = teki
        @font = Font.new(36)
    end

    def hantei

        if @player === @teki
            Window.draw_font(200, 300, "おまえの負け!",@font)
        
         
        # エンドロールのなにか --gameover
        #elsif @player === @block_img
            #Window.draw_font(200, 300, "おまえの負け!",font)
        # エンドロールのなにか --gameover
        else
            Window.draw_font(200, 300, "おめでとう!",@font)
        # エンドロールのなにか --clear
        end
    end
    #
end
        