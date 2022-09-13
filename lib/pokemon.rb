require 'pry'

class Pokemon
  STATUSES = {
    "sleep" => { name: "sleep", duration: 7, strength: 3 },
    "paralyze" => { name: "paralyze", duration: 4, strength: 2 },
    "confusion" => { name: "confusion", duration: 10, strength: 1 }
  }
  attr_reader :name
  def initialize(hash)
    @name = hash[:name]
    @battle = Hash.new(nil)
  end

  def apply(effect_name, round_applied_at)
    duration = STATUSES[effect_name][:duration]
    # round = round_applied_at
    round_applied_at.upto(duration + round_applied_at - 1) do |num|
      if !STATUSES[@battle[num]].nil? && STATUSES[effect_name][:strength] >= STATUSES[@battle[num]][:strength]
        @battle[num] = STATUSES[effect_name][:name]
      elsif @battle[num].nil?
        @battle[num] = STATUSES[effect_name][:name]
      end
    end
    # while round <= duration
    #   @battle[round] = effect_name
    #   round += 1
    # end
    # binding.pry 
  end

  def status_at(round)
    # binding.pry
    @battle[round]
  end
end