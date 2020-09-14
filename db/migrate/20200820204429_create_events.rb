class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :category
      t.string :place
      t.string :address
      t.date :datestart
      t.date :datefinish
      t.string :type

      t.timestamps
    end
  end
end
