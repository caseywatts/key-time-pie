class Activity < ActiveRecord::Base
  belongs_to :user
  attr_accessible :scheduledclass, :scheduledsection, :title, :unscheduled, :user_id
end
