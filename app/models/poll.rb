class Poll < ActiveRecord::Base
	belongs_to :admin
	has_many :options
	validates :question, presence: true
	validates :deadline, date: {after: :start_date, message: "must be after Start Date.!"}

	def user_has_voted?(voter_id)
		result = Vote.joins("inner join options on options.id = votes.option_id inner join polls on options.poll_id = polls.id inner join voters on voters.id = votes.voter_id").where("voter_id = ? and poll_id = ?", voter_id, id)
		!result.empty?
	end

end
