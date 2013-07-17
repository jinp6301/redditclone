class Sub < ActiveRecord::Base
  attr_accessible :sub_name, :user_id, :links_attributes

  belongs_to :user
  has_many :links
  accepts_nested_attributes_for :links, reject_if: :all_blank
end
