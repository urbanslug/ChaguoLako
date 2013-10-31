class Option < ActiveRecord::Base
  belongs_to :poll

  validates :option, presence: true
end
