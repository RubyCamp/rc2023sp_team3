module Directors
	# タイトルシーン制御用ディレクター
	class Title < Base
		def initialize
            super
            @bg_img = ImageManager.load_image("images/title.png")
			@stage2_director = Stage2.new
		end

        def render_frame
			draw_background
			check_scene_transition
		end

        private

        # シーンの背景を描画
		def draw_background
			Window.draw(0, 0, @bg_img)
			draw_font(:center, 570, "Nキーで開始", :default, color: C_BLACK)
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