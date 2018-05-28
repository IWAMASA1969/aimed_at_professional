class Gate
  STATIONS = %i[umeda juso mikuni].freeze
  FARES = [150, 190].freeze

  def initialize(name)
    @name = name
  end

  def enter(ticket)
    ticket.stamp(@name)
  end

  def exit(ticket)
    calc_fare(ticket) <= ticket.fare
  end

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance.abs - 1]
  end
end
