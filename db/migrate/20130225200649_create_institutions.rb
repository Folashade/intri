class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.integer :id
      t.integer :zipcode
      t.string :name
      t.integer :industry_code
      t.text :description
      t.string :path_to_logo
      t.string :street_1
      t.string :street_2
      t.string :phone
      t.integer :linkedin_id
      t.string :email_extention
      t.boolean :active

      t.timestamps
    end
  end
end
