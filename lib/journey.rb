#marking a journey's start and endpoints

#start journey
#end journey
#journey complete?


#call fare
#entry station
#exit station

class Journey

MINIMUM_FARE = 1

  attr_accessor :journey_started, :journey_finished

  def initialize
    @journey_started = false
    @journey_finished = false
  end

def begin_journey
  self.journey_started = true
end

def end_journey
  self.journey_finished = true
end

def journey_completed?
  return true if self.journey_started && self.journey_finished
  false
end

# def fare
# end


end
