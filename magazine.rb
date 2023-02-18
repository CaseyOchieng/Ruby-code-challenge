class Author
    attr_reader :name
    
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
    
    def self.all
      @@all
    end
    
    def articles
      Article.all.select { |article| article.author == self }
    end
    
    def magazines
      articles.map { |article| article.magazine }.uniq
    end
    
    def add_article(magazine, title)
      Article.new(self, magazine, title)
    end
    
    def topic_areas
      magazines.map { |magazine| magazine.category }.uniq
    end
  end
  
  class Magazine
    attr_accessor :name, :category
    
    @@all = []
    
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
    
    def self.all
      @@all
    end
    
    def contributors
      Article.all.select { |article| article.magazine == self }.map { |article| article.author }
    end
    
    def self.find_by_name(name)
      all.find { |magazine| magazine.name == name }
    end
    
    def article_titles
      Article.all.select { |article| article.magazine == self }.map { |article| article.title }
    end
    
    def contributing_authors
      author_count = Hash.new(0)
      Article.all.select { |article| article.magazine == self }.each { |article| author_count[article.author] += 1 }
      author_count.select { |author, count| count > 2 }.keys
    end
  end
  
  class Article
    attr_reader :author, :magazine, :title
    
    @@all = []
    
    def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
      @@all << self
    end
    
    def self.all
      @@all
    end
  end

  
# Create some authors
author1 = Author.new("John Smith")
author2 = Author.new("Jane Doe")

# Create some magazines
magazine1 = Magazine.new("Sports Illustrated", "Sports")
magazine2 = Magazine.new("National Geographic", "Science")

# Add some articles to the authors and magazines
author1.add_article(magazine1, "The History of Baseball")
author2.add_article(magazine2, "The Wonders of the Ocean")
author1.add_article(magazine1, "The Future of Football")

# Test out the object relationship methods
puts author1.articles.map { |article| article.title }
# Output: ["The History of Baseball", "The Future of Football"]

puts author1.magazines.map { |magazine| magazine.name }
# Output: ["Sports Illustrated"]

puts magazine1.contributors.map { |author| author.name }
# Output: ["John Smith"]

# Test out the aggregate methods
puts author1.topic_areas
# Output: ["Sports"]

puts magazine1.article_titles
# Output: ["The History of Baseball", "The Future of Football"]

puts magazine1.contributing_authors.map { |author| author.name }
# Output: ["John Smith"]
