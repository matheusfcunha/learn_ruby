class Book
attr_accessor :title

def title
  exceptions = ["and","in","the","of","a","an"]
  @title = @title.split
  @title.first.capitalize!
  @title.each do |title|
    unless exceptions.include?(title)
      title.capitalize!
    end
  end
  @title.join(" ")
end
end
