def event(name, &block) 
  @events[name] = block
end

def setup &block 
  @setups.push block
end

Dir.glob('*.events.rb') do |file|

  load file
  @events = {}
  @setups = []
  env = Object.new 
end




