class Athletes
  def initialize(lastname)
    @lastname = lastname
    @features = {:Muscles => 0, :Relief => 0, :Strength => 0, :Endurance => 0}
  end

  def pump(what)
    @features[what] += 1
  end

  def stats
    puts "#{@lastname} stats: "
    @features.each do |k,v|
      puts "#{k}: #{v}"
    end
    puts
  end
end

panarin = Athletes.new(:Panarin)
panarin.pump(:Relief)
panarin.stats

poirier = Athletes.new(:Poirier)
poirier.pump(:Endurance)
poirier.stats