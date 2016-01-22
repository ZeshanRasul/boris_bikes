class Bike
  # attr_accessor :broken initialize broken = false to make false not nil

  def initialize
    @broken = false
  end

  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end

end
