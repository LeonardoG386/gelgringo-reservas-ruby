class Box < ApplicationRecord
	def nombreb
		"#{descripcion}"
		validates :descripcion, :tamano, presence: true
	end
end
