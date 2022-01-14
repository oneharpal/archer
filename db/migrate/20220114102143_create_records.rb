class CreateRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :records do |t|
      t.string :name
      t.text :description
      t.boolean :expense
      t.decimal :amount
      t.datetime :order_on
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
