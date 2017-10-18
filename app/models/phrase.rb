class Phrase < ApplicationRecord
	scope :get_active, -> {where(active: true)}

	scope :in_active, -> {where(active: false)}

	def self.max_priority
		Phrase.maximum("priority")
	end
end
