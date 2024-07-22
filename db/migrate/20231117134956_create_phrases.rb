class CreatePhrases < ActiveRecord::Migration[7.0]
  def change
    create_table :phrases do |t|
      t.string :english
      t.string :japanese

      t.timestamps
    end
  end
end
