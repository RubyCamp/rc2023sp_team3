require 'dxruby'

require_relative 'teki'
require_relative 'player'


Window.width = 800
Window.height = 600
Window.caption = "RubyCamp 2023SP Sample Game"

# ゲーム開始時点で実行する最初のシーンディレクターを生成
player = Player.new
teki = Teki.new

imgs = [@teki_image, @player_img]

Window.loop do
    teki.play
    player.play
    Sprite.draw(imgs)
	break if Input.key_push?(K_ESCAPE) # ESCキー押下でメインループを抜ける
end