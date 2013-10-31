class VoterMailer < ActionMailer::Base
	default from: "xxxxxx"

	def approval_email(voter)
		@voter = voter
		mail(to: @voter.email, subject: "Welcome To Chaguo Lako.!")
	end

	def new_poll_email(voter_add)
		mail(to: voter_add, subject: "A New Poll has been Posted.!")
		
	end
end
