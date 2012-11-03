class Activity < ActiveRecord::Base
  belongs_to :activity_group
  attr_accessible :title, :scheduledclass, :scheduledsection, :unscheduled, :user_id
end
