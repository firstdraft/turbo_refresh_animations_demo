class CreateItems < ActiveRecord::Migration[8.1]
  def change
    create_table :items do |t|
      t.references :list, null: false, foreign_key: true
      t.string :content
      t.boolean :completed

      t.timestamps
    end
  end
end
