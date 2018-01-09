class Phrase < ApplicationRecord

  scope :reset_all, -> { update_all(state: 0) }
  scope :get_first_random, -> { where(state: 0).order("RANDOM()").first }

  def self.fetch_latest_state
    order("state DESC").last.state 
  end

end
