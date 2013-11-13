class Vote < ActiveRecord::Base
  belongs_to :option
  belongs_to :voter

 end

# Vote.joins("inner joins options on options.id = votes.option_id")
