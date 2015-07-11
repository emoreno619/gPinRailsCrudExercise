class Pin < ActiveRecord::Base
	# validates :url, :comment, presence: true, length: {maximum:50, message => "What are you doing?"}, uniqueness: {scope: :url, message => "What are you doing?"}

	# Where does this error message appear?
	validates :url, uniqueness: {scope: :image, message: "keeping it dry!"}
	validates :url, :comment, presence: true, length: {maximum: 50}
end
