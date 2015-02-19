class CreateStaffers < ActiveRecord::Migration
  def change
    create_table :staffers do |t|
      t.string :email
      t.string :password_digest
      t.string :name

      t.timestamps null: false
    end
  end
end
