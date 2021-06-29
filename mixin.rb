module Languages
  FAVE = "JavaScript"
end

class Master
  include Languages
  def initialize; end
  def victory
    puts FAVE
  end
end

total = Master.new
total.victory
