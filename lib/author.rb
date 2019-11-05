class Author
  attr_accessor :name, :title
  
  @@all = []
  
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
    def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def add_post(name)
    posts = Post.new(name)
    posts.author = self
  end
  
  
  def posts
    Post.all.select {|post| post.author == self}
  end  
  
  
end  