class Song
  attr_accessor :name, :artist_name
  @@all = []

   
  def self.all
    @@all 
    
  end

  def save
    self.class.all << self
  end
 def self.create
 song =  self.new
 song.save
 
 song
 end
 
 def self.new_by_name (string_name)
   
   s = self.new 
   self.name = string_name
  song
   
 end
end
