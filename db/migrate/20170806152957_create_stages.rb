class CreateStages < ActiveRecord::Migration[5.0]
  def change
    create_table :stages do |t|
      t.references :theme, foreign_key: true
      t.text :episode                         # 스크립트
      t.text :description                     # 문제설명
      t.integer :stage_num                    # 현재 스테이지
      t.string :img_url                       # 설명 이미지
      t.string :password_digest               # 비밀번호
      t.float :gps_x                          # 문제위치
      t.float :gps_y

      t.timestamps
    end
  end
end
