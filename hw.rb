class User
  attr_accessor :name, :age, :phone, :address, :comments
  
  def initialize(data)
    data_arr = data.split(',')
    @name = data_arr[0]
    @age = data_arr[1]
    @phone = data_arr[2]
    @address = data_arr[3]
    @comments = data_arr[4]
  end

end

class UserCollection
  methods = Hash.new { |hash| 
    hash['name'] = 0
    hash['age'] = 1
    hash['phone'] = 2
    hash['address'] = 3
    hash['comments'] = 4}
  def initialize
    @people = []
  end

  def open_data(path)
    data = File.open(path)
    while (elem = data.gets)
      @people.push(User.new(elem))
    end
    data.close
  end

  def method_missing (name, *params)
  	true_name = name[9..-1]
  	if (methods[true_name].has_value?)
  	  @people.sort_by! {|elem, another| elem[methods[true_name]] <=> another[methods[true_name]]}
  	  else
  	  	puts 'error'	
  	end
  	return @people
  end
end

  


