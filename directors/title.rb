module Directors
	# タイトルシーン制御用ディレクター
	class Title < Base
		def initialize
            super
            @bg_img = Image.load("images/title.png")
			@stage2_director = Stage2.new
            @font=Font.new(24)
		end

        def render_frame
			draw_background
			check_scene_transition
		end

        private

        # シーンの背景を描画
		def draw_background
			Window.draw(100, 150, @bg_img)
			Window.draw_font(0, 0, "Nキーで開始", @font, color: C_WHITE)
		end

        # Nきーが押されたらシーン遷移を実行する
		def check_scene_transition
			if Input.key_down?(K_N)
				@stage2_director.timer_start
				transition_scene(@stage2_director)
			end
		end
	end
end