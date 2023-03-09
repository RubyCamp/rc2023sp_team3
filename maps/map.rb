class Map
  def initialize
    #マップデータ
    @map = [[0, 0, 0, 0, 0,	0, 0,	0, 0, 0, 0, 1, 1, 1, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 2, 2, 0, 0, 0, 4, 1, 3, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 2, 2, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 1, 1, 4, 1, 4, 4, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 1, 4, 0, 4, 0, 0, 4, 0, 4, 0, 0, 0, 0, 5, 5, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 0, 1, 0, 1, 4, 0, 4, 4, 0, 0, 0, 4, 1, 4, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 1, 4, 4, 1, 0, 0, 1, 3, 1, 4, 0, 0, 0, 4, 4, 4, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 4, 1, 1, 4, 4, 4, 1, 1, 1, 4, 4, 4, 4, 0, 0, 1, 1, 4, 1, 0, 0],
            [0, 0, 0, 4, 4, 4, 1, 4, 3, 4, 4, 1, 4, 1, 4, 4, 4, 4, 4, 4, 1, 4, 4, 4, 4, 0, 0, 0],
            [0, 0, 4, 4, 1, 1, 4, 1, 4, 1, 4, 4, 4, 1, 4, 1, 4, 4, 1, 1, 4, 4, 4, 4, 0, 0, 0, 0],
            [0, 0, 4, 4, 0, 0, 0, 4, 4, 4, 1, 4, 1, 4, 1, 1, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 4, 4, 0, 0, 0, 3, 1, 3, 1, 4, 4, 4, 4, 4, 1, 4, 4, 0, 0, 0, 1, 0, 0, 0, 0, 0],
            [0, 0, 4, 1, 0, 0, 0, 3, 3, 4, 1, 1, 4, 1, 4, 1, 1, 4, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 4, 4, 4, 4, 1, 1, 4, 4, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0],
            [0, 0, 0, 0 ,0 ,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0],
            [0, 0, 1, 0, 0, 3, 1, 1, 1, 1, 1, 4, 4, 1, 1, 4, 4, 1, 4, 1, 4, 0, 0, 1, 0, 0, 0, 0],
            [0, 0, 0, 0, 0 ,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 1, 4, 1, 4, 1, 1, 1, 4, 1, 1, 4, 1, 1, 0, 0, 0, 1, 1, 1, 0, 4, 4, 0],
            [1, 1, 1, 4, 1 ,0, 0, 0, 0, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 4, 4, 0]]

    <<~EOF
    @map = [[1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1],
            [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 4, 0, 0, 1, 0, 0, 0, 1],
            [1, 0, 0, 1, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 1],
            [1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1],
            [1, 0, 0, 0, 0, 0, 0, 0, 1, 3, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1],
            [1, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 2, 2, 1, 1, 1, 1, 3, 0, 1, 3, 0, 0, 1],
            [1, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 1, 0, 0, 1, 0, 4, 0, 1],
            [1, 0, 0, 0, 0, 0, 1, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 4, 0, 1],
            [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1],
            [1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1],
            [1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 3, 0, 0, 1],
            [1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 4, 0, 0, 1],
            [1, 0, 0, 0, 0, 1, 0, 2, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 3, 0, 0, 1],
            [1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1],
            [1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1],
            [1, 1, 1, 0, 0, 1, 4, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 1],
            [1, 0, 0, 0, 1, 0, 3, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1],
            [1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1],
            [1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1]]
    EOF

    #配置パーツ
    @map_tile = []  
    @map_tile[0] = Image.new(32, 32, [0,0x00,0x99,0xff]) #背景１（空）
    @map_tile[1] = Image.load("images/block.png") #障害物（ブロック）
    @map_tile[2] = Image.new(32, 32, [0xff,0xff,0xff]) #背景２（雲）
    @map_tile[3] = Image.new(32, 32, [111,75,62]) #背景２（ニセブロック）  
    @map_tile[4] = Image.new(32, 32, [74,45, 30]) #背景２（ニセ） 123,85,68
    @map_tile[5] = Image.new(32, 32, [255, 224, 32]) # ゴール

    @char_tile = Image.load("images/haniwa.png")

    #フレーム数設定
    Window.fps = 30

    #初期値設定
    @x = 32 # 32
    @y = @y_prev = 32
    @f = 2
    @jump_ok = false
  end
#対応する配列を返す
  def collision_tile(x, y, arr)
    return arr[y/32][x/32] #マップ配列の仕様上、ｘとｙが逆になっているのに注意
  end

#ゲームループ
  # Window.loop do
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
    if @y >= 580
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

    #マップの表示
    Window.draw_tile(0,0,@map,@map_tile,nil,nil,nil,nil)

    #キャラの表示
    Window.draw(@x, @y, @char_tile) 
    # p [@x/28,@y/17]
    #p [@x,@y]
    end
end
