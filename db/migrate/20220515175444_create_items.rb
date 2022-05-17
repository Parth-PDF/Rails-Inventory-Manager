class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.belongs_to :warehouse, index: true, foreign_key: true
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
