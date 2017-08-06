class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.references :theme, foreign_key: true
      t.integer :hint_count, default: 5       #힌트 사용횟수
      t.integer :stage_num, default: 1        #현재 스테이지 번호
      t.string :team_type                     #팀 종류
      t.string :clear_list                    #클리어한 스테이지 리스트
      t.datetime :start_time                  #시작시간

      t.timestamps
    end
  end
end
