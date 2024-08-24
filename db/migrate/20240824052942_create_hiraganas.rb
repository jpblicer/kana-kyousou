class CreateHiraganas < ActiveRecord::Migration[7.1]
  def change
    create_table :hiraganas do |t|
      t.string :kana
      t.string :romaji

      t.timestamps
    end
  end
end
