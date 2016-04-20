class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :age
      t.references :user, index: true, foreign_key: true
      t.integer :coat_color
      t.integer :marking_color
      t.integer :coat_pattern
      t.integer :marking_pattern

      t.timestamps null: false
    end
  end
end
