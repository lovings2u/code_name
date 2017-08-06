class CreateThemes < ActiveRecord::Migration[5.0]
  def change
    create_table :themes do |t|
      t.string :title                       # 테마명
      t.text :description                   # 테마설명
      t.integer :difficulty                 # 난이도
      t.integer :price                      # 가격
      t.integer :play_time                  # 진행예상시간
      t.integer :player_num                 # 최대참여가능인원
      t.string :img_url

      t.timestamps
    end
  end
end
