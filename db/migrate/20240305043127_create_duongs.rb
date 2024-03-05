class CreateDuongs < ActiveRecord::Migration[7.1]
  def change
    create_table :duongs do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
