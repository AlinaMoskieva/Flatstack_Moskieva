class User
  attr_accessor :name, :age, :phone, :address, :comments
  
  def initialize(data)
    data_arr = data.split(',')
    @name = data_arr[0]
    @age = data_arr[1].to_i
    @phone = data_arr[2]
    @address = data_arr[3]
    @comments = data_arr[4]
  end
end

class UserCollection
  def open_data(path)
    data = File.open(path)
    
    while (elem=data.gets)
	@people.push(User.new(elem))  
    end
    @people.delete_at(0)
  end
  
  def initialize 
    @people = []
  end

  def method_missing(call, name)  
     p @people.sort_by! {|elem| elem.send(name) }
  end
end
 
user_collection = UserCollection.new
user_collection.open_data("/Users/Moskieva/Desktop/ToGitHub/data.csv")
user_collection.sortplz("age")
