class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, email: true
  validates :first_name, :length { in: 3..50 }
  validates :last_name, :length { in: 3..50 }
      
   has_secure_password 

  before_validation :add_default_role

  private
    def add_default_role
        self.role = "user" if self.role.nil?
    end

  private   
    def validate_each(record, attribute, value)
      unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
        record.errors[attribute] << (options[:message] || "is not an email")
      end
    end


end
