class Book < Product
  def update(options)
    @title = options[:title]
    @author_name = options[:author_name]
  end

  def info
    "Book #{@title} || Author: #{@author_name}"
  end
end