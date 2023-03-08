module Directors
	# シーン（場面）管理用クラスの共通基底クラス
	class Base
		def initialize
			@next_director = self
			@fonts = {
				default: Font.new(18, "ＭＳ 明朝", weight: true),
			}
			# @score_history = {} # シーンを跨ぐ得点情報を保持するためのハッシュ
		end

		# シーン切り替え実行
		def transition_scene(director)
			@next_director = director
		end

		# メインループから呼ばれる受け口用メソッド。
		# 次のフレームでメインループから呼ばれるディレクターオブジェクトを返す。
		# 画面遷移しない場合はself（現在のディレクター）を返し、画面遷移する際は次の画面を担当するディレクターを
		# 返すことでシーン制御を実現する。
		def play
			render_frame
			@next_director
		end

		# 個々のディレクタークラスでオーバーライドする１フレーム分の描画用メソッド
		def render_frame
			raise "override me."
		end


	end
end