class User < ActiveRecord::Base
  has_many :activities
  accepts_nested_attributes_for :activities, :reject_if => :all_blank, :allow_destroy => true
  attr_accessible :provider, :uid, :name, :email, :activities_attributes

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || ""
      end
    end
  end

end
