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

    round_applied_at.upto(duration) do |num|
      @battle[num] = STATUSES[effect_name][:name]
    end
    binding.pry
  end

  def status_at(round)
    @battle[round]
  end
end