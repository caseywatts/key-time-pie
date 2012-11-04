class Activity < ActiveRecord::Base
  belongs_to :activity_group
  attr_accessible :title, :scheduledclass, :scheduledsection, :unscheduled, :activity_group
  validates_presence_of :title, :scheduledclass, :scheduledsection, :unscheduled
end
