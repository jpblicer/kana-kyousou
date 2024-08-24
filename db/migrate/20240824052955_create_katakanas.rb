class CreateKatakanas < ActiveRecord::Migration[7.1]
  def change
    create_table :katakanas do |t|
      t.string :kana
      t.string :romaji

      t.timestamps
    end
  end
end
