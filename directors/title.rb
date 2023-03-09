module Directors
	# タイトルシーン制御用ディレクター
	class Title < Base
		def initialize
            super
            @bg_img = Image.load("images/title2.png")
			@stage2_director = Stage2.new
            @font=Font.new(15)
		end

        def render_frame
			draw_background
			check_scene_transition
		end

        private

        # シーンの背景を描画
		def draw_background
			Window.draw(130, 150, @bg_img)
            Window.draw_scale(130, 150,@bg_img , 1.8,1.8)
			Window.draw_font(0, 0, "Let's Go !SIMANE !!Nキーを押してね！", @font, color: C_WHITE)
		end

        # Nキーが押されたらシーン遷移を実行する
		def check_scene_transition
			if Input.key_down?(K_N)
				transition_scene(@stage2_director)
			end
		end
	end
end