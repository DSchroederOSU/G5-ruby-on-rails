class CreateRepairs < ActiveRecord::Migration[5.2]
  def change
    create_table :repairs do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :year
      t.string :make
      t.string :model
      t.string :repair
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
