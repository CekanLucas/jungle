class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :name
      t.integer :percent_off
      t.date :starts_on
      t.date :ends_on

      t.timestamps null: false
    end
  end
end
