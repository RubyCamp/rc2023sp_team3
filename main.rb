require 'dxruby'
require_relative 'teki'
require_relative 'music'

# 依存するファイル群を一括でrequireする
Dir.glob("directors/*.rb") {|path| require_relative path }


# image_chara = Image.load("images/haniwa.png")

Window.width = 800
Window.height = 600
Window.bgcolor = C_BLACK
Window.caption = "島根への旅"


# ゲーム開始時点で実行する最初のシーンディレクターを生成
current_director = Directors::Title.new

Window.loop do
	current_director = current_director.play
	break if Input.key_push?(K_ESCAPE) # ESCキー押下でメインループを抜ける
end