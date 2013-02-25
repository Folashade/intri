class Institution < ActiveRecord::Base
  attr_accessible :active, :description, :email_extention, :id, :industry_code, :linkedin_id, :name, :path_to_logo, :phone, :street_1, :street_2, :zipcode
end
