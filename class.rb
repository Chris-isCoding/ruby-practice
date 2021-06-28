class Computer
  @@users = {}
  def Computer.get_users
    @@users
  end
  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password
    @files = {}
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{@username}: a new file #{filename} has been created #{time}"
  end

end

my_computer = Computer.new('admin', '123')
