class Activity < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :scheduledclass, :scheduledsection, :unscheduled, :user_id
end
