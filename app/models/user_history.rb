class UserHistory < ActiveRecord::Base
  attr_accessible :department_id, :description, :end_date, :institution_id, :start_date, :title, :user_id, :verification_status
  
  ## Callbacks ##
  
  ## Relationships ##
  belongs_to :user
  belongs_to :department
  belongs_to :institution
  
  
  ## Validations ##
  validates_presence_of :title  
  validates_inclusion_of :role, :in => %w[admin manager employee], 
                                :message => "is not an option"
                                
  validates_date :start_date, :on_or_before => lambda { Date.current }, 
                              :on_or_before_message => "cannot be in the future"
                              
  validates_date :end_date, :after => :start_date, 
                            :on_or_before => lambda { Date.current }, 
                            :allow_blank => true
  
  
  ## Scopes ##
  scope :current, where('end_date IS NULL')
  scope :past, where('end_date IS NOT NULL')
  scope :for_user, lambda {|user_id| where("user_id = ?", user_id) }
  scope :verified, where('verification_status = ?', true)
  scope :unverified, where('verification_status = ?', false)
  scope :chronological, order('start_date DESC, end_date DESC') #most recent at top
  
  
  ## Other Methods ##
  
  ## Private Methods ## 
  
end
