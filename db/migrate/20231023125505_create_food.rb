class CreateFood < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :title
      t.boolean :healthy
      t.datetime :entry_date

      t.timestamps
    end
  end
end
