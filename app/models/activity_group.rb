class ActivityGroup < ActiveRecord::Base
  belongs_to :user
  has_many :activities
  accepts_nested_attributes_for :activities, :reject_if => :all_blank, :allow_destroy => true
  attr_accessible :activities_attributes

end
