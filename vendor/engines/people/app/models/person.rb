class Person < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :bio]

  validates :name, :presence => true, :uniqueness => true
  
  belongs_to :photo, :class_name => 'Image'
end
