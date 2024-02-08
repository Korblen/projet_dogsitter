class CreateStrolls < ActiveRecord::Migration[7.1]
  def change
    create_table :strolls do |t|
      t.datetime :date
      t.references :dog, null: false, foreign_key: true
      t.references :sitter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
