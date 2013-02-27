require 'test_helper'

class UserHistoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  

  ## Relationship macros ##
  should belong_to(:category)


  ## Validation macros ##
  should validate_presence_of(:title)
  should allow_value(1000).for(:units_sold)
  should_not allow_value(-1000).for(:units_sold)
  should_not allow_value(3.14159).for(:units_sold)
  should_not allow_value("hehe").for(:units_sold)

  ## Test dates ##
  should allow_value(1.year.ago).for(:proposal_date)
  should_not allow_value(1.week.from_now).for(:proposal_date)
  should_not allow_value("bad").for(:proposal_date)
  should_not allow_value(nil).for(:proposal_date)
  # should_not allow_value(nil).for(:contract_date)
  
  ## Test Values for 'title' ##


  ## CONTEXT ##
  context "With a proper context, " do
    # I can create the objects I want with factories
    setup do           
    end

    # and provide a teardown method as well
    teardown do
    end

    # test one of each factory (not really required, but not a bad idea)
    should "show that all factories are properly created" do
      # assert_equal "Ruby", @ruby.name
    end


    ## TEST SCOPES ##
    should "have all the books listed alphabetically by title" do
      assert_equal ["Agile Testing", "Rails 3 Tutorial", "Ruby for Masters", "The RSpec Book",
      "The Well-Grounded Rubyist"], Book.by_title.map{|b| b.title}
    end
    
    ## TEST CUSTOM VALIDATIONS ##
  
end
