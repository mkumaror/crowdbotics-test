class PhraseController < ApplicationController
	def index
		@phrases = Phrase.get_active.order(priority: :desc)
	end

	def rand_phrase
		phrases = Phrase.in_active
		
		@phrase = phrases.order("RANDOM()").first
    
    @phrase.update_attributes(active: true, priority: Phrase.max_priority + 1) if @phrase.present?
	end

	def clear_phrases
		Phrase.update_all(active: false, priority: 0)
	end
end
