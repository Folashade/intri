class CreateUserHistories < ActiveRecord::Migration
  def change
    create_table :user_histories do |t|
      t.integer :user_id
      t.integer :institution_id
      t.integer :department_id
      t.string :title
      t.string :description
      t.date :start_date
      t.date :end_date
      t.boolean :verification_status, :default => false

      t.timestamps
    end
  end
end
