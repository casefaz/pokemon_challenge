class Pokemon
  STATUSES = {
    "sleep" => { name: "sleep", duration: 7, strength: 3 },
    "paralyze" => { name: "paralyze", duration: 4, strength: 2 },
    "confusion" => { name: "confusion", duration: 10, strength: 1 }
  }
  attr_reader :name
  def initialize(name:)
    @name = name
    @battle = { 0 => nil }
  end

  def apply(effect_name, round_applied_at)
    binding.pry
    # loop through battle, add number to round, at each round(#) add effect name and the round it was applied
    # put it in an array and reduce it? - how would it store the data? increment the round and add the effect name for the duration?
    # also consider linked lists and recursion in order to ADD and not just overwrite
    # statuses[:duration].times do
    @battle = { round_applied_at => effect_name }
    # binding.pry
  end

  def status_at(round)
    binding.pry
    # deincrementation between duration and round happens in this method
    @battle[round]
  end
end