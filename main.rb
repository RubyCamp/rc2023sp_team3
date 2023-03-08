require 'dxruby'

require_relative 'teki'
require_relative 'player'
require_relative 'judge'
require_relative 'stage2'

Window.width = 800
Window.height = 600
Window.bgcolor = C_BLACK
Window.caption = "島根への旅"

# ゲーム開始時点で実行する最初のシーンディレクターを生成
player = Player.new
teki = Teki.new
judge = Judge.new(player,teki)
stage2 = Stage2.new

imgs = [@teki_image, @player_img]

Window.loop do
    teki.play
    player.play
    stage2.play
    # judge.hantei
    Sprite.draw(imgs)
    judge.hantei
	break if Input.key_push?(K_ESCAPE) # ESCキー押下でメインループを抜ける
end