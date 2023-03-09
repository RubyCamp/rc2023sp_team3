module Directors
	# エンディングシーン制御用ディレクター
	# ※ 終了処理のESCキー判定はメインループ任せ。
	class Ending < Base
		def initialize
			super
			@bg_img3 = Image.load("images/ending_clear.png")
		end

		def render_frame
			if Input.key_push?(K_SPACE)
            		
			end
			Window.draw_scale(100, 100, @bg_img3, 2, 2)
		end
		
	end
end