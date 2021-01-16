class CreateUfs < ActiveRecord::Migration[5.2]
  def change
    create_table :ufs do |t|
      t.date :date
      t.float :price

      t.timestamps
    end
  end
end
