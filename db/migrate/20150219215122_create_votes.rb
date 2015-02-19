class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :yes_or_no
      t.references :bill, index: true
      t.references :voter, index: true

      t.timestamps null: false
    end
    add_foreign_key :votes, :bills
    add_foreign_key :votes, :voters
  end
end
