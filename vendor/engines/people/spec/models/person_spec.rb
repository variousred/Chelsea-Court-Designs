require 'spec_helper'

describe Person do

  def reset_person(options = {})
    @valid_attributes = {
      :id => 1,
      :name => "RSpec is great for testing too"
    }

    @person.destroy! if @person
    @person = Person.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_person
  end

  context "validations" do
    
    it "rejects empty name" do
      Person.new(@valid_attributes.merge(:name => "")).should_not be_valid
    end

    it "rejects non unique name" do
      # as one gets created before each spec by reset_person
      Person.new(@valid_attributes).should_not be_valid
    end
    
  end

end