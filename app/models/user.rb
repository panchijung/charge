class User < ActiveRecord::Base
	validates :name, presence: true


	before_save :say_hello

	private
	def say_hello
		self.name = "xx #{name} xx"
	end
end
