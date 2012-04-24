class Post < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  validates_presence_of :content

  scope :recent, order("updated_at desc")
end
