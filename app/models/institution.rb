class Institution < ActiveRecord::Base
  attr_accessible :active, :description, :email_extention, :id, :industry_code, :linkedin_id, :name, :path_to_logo, :phone, :street_1, :street_2, :zipcode

  #Relationships
  # belongs_to :zipcode
  # has_many :reviews
  # has_many :opportunities
  has_many :user_histories
  has_many :departments

  # Scopes
  scope :active, where('instituions.active = ?', true)
  scope :inactive, where('institutions.active = ?', false)
  scope :alphabetical, order("name")

  # Validations
  validates_presence_of :name
  validates_presence_of :industry_code
  validates_presence_of :zipcode

end
