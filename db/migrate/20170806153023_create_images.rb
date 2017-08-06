class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.references :stage, foreign_key: true
      t.string :image_type                    # 이미지 타입(퀴즈/설명)
      t.string :img_url                       # 이미지 주소

      t.timestamps
    end
  end
end
