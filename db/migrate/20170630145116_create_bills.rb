class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.string :name, null:false
      t.integer :amount, null:false
      t.datetime :due_date, null:false
      t.string :status, null:false
      t.integer :user_id, foreign_key:true, null:false

      t.timestamps
    end
  end
end
