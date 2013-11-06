class Item < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :email, presence: true
  validates :title, length: { minimum: 5, maximum: 25 }            
  validates :description, length: { minimum: 5, maximum: 100 }
  # validates_format_of   :email
  #                       :with       => /^.+@.+$/,
  #                       :message    => 'email must be valid'
  
  
end
