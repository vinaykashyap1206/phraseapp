class PhrasesController < ApplicationController
  
  after_action :set_state, only: [:get_random_phrase]
  
  def index
    @phrases = Phrase.order('state ASC').where("state <> ?", 0)
  end
    
  def get_random_phrase
    @phrase = Phrase.get_first_random
    render :phrase  
  end

  def clear_phrases
    @phrases = Phrase.reset_all
    render :phrase
  end

  private
  
  def set_state
    @state = Phrase.fetch_latest_state
    @phrase.update(state: @state + 1) if @phrase.present? && @state.present?
  end  

end
