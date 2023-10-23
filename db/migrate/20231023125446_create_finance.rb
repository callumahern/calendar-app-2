class CreateFinance < ActiveRecord::Migration[7.0]
  def change
    create_table :finances do |t|
      t.string :title
      t.integer :cost
      t.datetime :entry_date

      t.timestamps
    end
  end
end
