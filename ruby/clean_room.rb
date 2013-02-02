def CleanRoom
  def complex_calculation
    puts "complex"
  end

  def do_something
    puts "sth"
  end
end

clean_room = CleanRoom.new
clean_room.instance_eval do
  if complex_calculation > 10
    do_something
  end
end
