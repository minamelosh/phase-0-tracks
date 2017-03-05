class TodoList

  def initialize(items)
   @list = []
   @list = items
  end

  def get_items
    @list
  end

  def add_item(item)
    @list = @list.push(item)
    return @list
  end

  def delete_item(item)
    @list.delete(item)
    return @list
  end

  def get_item(index)
    item = @list[index]
    return item
  end

end

=begin
my_list = TodoList.new(["shop", "cook", "laundry"])
#my_list.initialize("shop cook laundry")
p my_list.add_item("mop")
p my_list.gets_items
p my_list.delete_item("shop")
#p my_list.gets_items
 my_list.get_item(0)
=end
