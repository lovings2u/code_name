class CreateHints < ActiveRecord::Migration[5.0]
  def change
    create_table :hints do |t|
      t.references :stage, foreign_key: true
      t.text :description                   # 힌트 설명
      t.string :img_url                     # 힌트 이미지

      t.timestamps
    end
  end
end
