module ContactPage
  class ContactMessage < ActiveRecord::Base
    attr_accessible :email, :first_name, :last_name, :message, :phone_number

	validates :first_name, :last_name, :phone_number, :presence => true

	validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }

	validates :message, :presence => true
  end
end
