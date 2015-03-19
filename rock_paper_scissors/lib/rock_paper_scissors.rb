class String
	def rock_paper_scissors()
		computer = ["rock","paper","scissor"].sample 

		if computer == self
			return "It's a tie!", computer
		elsif computer == "rock" and self == "scissor"
			return "You Lost!", computer
		elsif computer == "rock" and self == "paper"
			return "You Won!", computer
		elsif computer == "scissor" and self == "paper"
			return "You Lost!", computer
		elsif computer == "scissor" and self == "rock"
			return "You Won!", computer
		elsif computer == "paper" and self == "scissor"
			return "You Won!", computer
		elsif computer == "paper" and self == "rock"
			return "You Lost!", computer
		end
	end
end