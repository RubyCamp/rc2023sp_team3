module Charactor

    # stage.rbで呼び出してもらう
    class Player_move

        def initialize(map)
            #初期値設定
            @x = 32
            @y = @y_prev = 32
            @f = 2
            @jump_ok = false
            @map = map
        end
        
        #キャラ
        @player = Image.load("images/haniwa.png")

        def block
            #Ｙ軸移動増分の設定
            y_move = (@y - @y_prev) + @f
            #座標増分が１ブロックを超えないように補正
            if y_move > 31
              y_move = 31
            end
            @y_prev = @y
            @y += y_move
            @f = 2 #f値を初期化し直す
        
            #穴に落ちたら座標を初期化
            if @y >= 480
              @x = 32
              @y = @y_prev = 0
            end
        
            #天井衝突判定
            if (collision_tile(@x   , @y, @map) == 1 or 
              collision_tile(@x+31, @y, @map) == 1) 
              @y = @y/32*32 + 32
            end
        
            #床衝突判定
            if collision_tile(@x   , @y+31, @map) == 1 or 
             collision_tile(@x+31, @y+31, @map) == 1
              @y = @y/32*32
              @jump_ok = true #地面に接地しているのでジャンプを許可する
            else
              @jump_ok = false #地面に接地していないので、ジャンプは許可しない
            end
        
            #左右移動
            @x += Input.x * 2
        
            #壁衝突判定（左側）
            if collision_tile(@x, @y   , @map) == 1 or 
             collision_tile(@x, @y+31, @map) == 1
             @x = @x/32*32 + 32
            end
            #壁衝突判定（右側）
            if collision_tile(@x+31, @y, @map) == 1 or 
             collision_tile(@x+31, @y+31, @map) == 1 
              @x = @x/32*32
            end
        
            #ジャンプ
            if Input.key_push?(K_SPACE) and @jump_ok
              @f = -20
            end
       
            #キャラの表示
            Window.draw(@x, @y, @player)
        end
    end

end