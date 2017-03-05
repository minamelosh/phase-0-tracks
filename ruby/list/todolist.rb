class TodoList

  def initialize(items)
    @list = []
    @list = items.split
  end

  def gets_items
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
