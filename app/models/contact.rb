class Contact < ActiveRecord::Base
  validates :email, :uniqueness => {:scope => :user_id}
  validates :email, :user_id, :name, presence: true

  belongs_to :owner,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: 'User'
end