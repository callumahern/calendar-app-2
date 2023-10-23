class CreateHabits < ActiveRecord::Migration[7.0]
  def change
    create_table :habits do |t|
      t.string :title
      t.datetime :entry_date

      t.timestamps
    end
  end
end
