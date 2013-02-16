class CreateExibitors < ActiveRecord::Migration
  def change
    create_table :exibitors do |t|
      t.string :name
      t.text :description
      t.integer :sponsor_id
      t.integer :exibitor_category_id

      t.timestamps
    end
  end
end
