class CreateExibitorCategories < ActiveRecord::Migration
  def change
    create_table :exibitor_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
