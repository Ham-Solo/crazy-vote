class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.text :description
      t.references :staffer, index: true

      t.timestamps null: false
    end
    add_foreign_key :bills, :staffers
  end
end
