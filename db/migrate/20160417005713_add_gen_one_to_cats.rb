class AddGenOneToCats < ActiveRecord::Migration
  def change
    add_column :cats, :gen_one, :boolean
  end
end
