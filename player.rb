require 'dxruby'

#player_img = Image.load("images/haniwa.png")
#flag = 0
#jamp = 30

class Player < Sprite
    def initialize
        self.collision = [50,50,40]
        player_img = Image.load("images/haniwa.png")
        flag = 0
        jamp = 30
        @x = 300
        @y = 300
        @p_img = player_img
        @flag = flag
        @jamp = jamp
        #self.x = @x
        #self.y = @y
        super(@x,@y,player_img)
    end

    def play
        #Window.loop do
            @x += Input.x*5 # 追加

            if Input.key_push?(K_SPACE)
                @flag = 1
            end
            if @flag > 0
                if @jamp > 25
                    @y -= 10
                elsif @jamp > 15
                    @y -= 5
                elsif @jamp > 0
                    @y -= 2
                else
                    @flag = -1
                end
                @jamp -= 1
            end
            if @flag < 0
                if @jamp < 15
                    @y += 2
                elsif @jamp < 25
                    @y += 5
                elsif @jamp < 30
                    @y += 10
                else
                    @flag = 0
                end
                @jamp += 1
            end
        self.x = @x
        self.y = @y

            @player_img = Window.draw_scale(@x, @y, @p_img, 0.2, 0.2) # 書き換え
        #end
    end
end