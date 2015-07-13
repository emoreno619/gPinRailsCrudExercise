class Pin < ActiveRecord::Base
	# validates :url, :comment, presence: true, length: {maximum:50, message => "What are you doing?"}, uniqueness: {scope: :url, message => "What are you doing?"}

	# This message 'keeping it dry' only applies when a pin is created whose name is not unique for the current session? 
	validates :url, uniqueness: {scope: :image, message: "keeping it dry!"}
	validates :url, :comment, presence: true, length: {maximum: 50}
end
