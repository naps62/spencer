class Day
  def initialize(**attributes)
    @date = attributes[:date]
    @count = attributes[:count]
    @value = Money.new(attributes[:cents], "EUR")
  end
end
