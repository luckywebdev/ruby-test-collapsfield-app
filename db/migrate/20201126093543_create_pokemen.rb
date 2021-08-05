class CreatePokemen < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemen do |t|
      t.string :name
      t.string :element
      t.int :age

      t.timestamps
    end
  end
end
