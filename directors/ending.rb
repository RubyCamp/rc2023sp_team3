module Directors
	# エンディングシーン制御用ディレクター
	# ※ 終了処理のESCキー判定はメインループ任せ。
	class Ending < Base
		def initialize
			super
			@bg_img = Image.load("images/ending_clear.png")
		end

		def render_frame
			Window.draw(0, 0, @bg_img)
			Window.draw_font(:center, 500, "Push ESC to quit", @font, color: C_WHITE)
		end
	end
end