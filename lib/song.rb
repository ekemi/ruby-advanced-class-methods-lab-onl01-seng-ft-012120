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
   
   p = self.new 
   p.name = string_name
   p
   
 end
 
 def self.create_by_name(s_name)
   
   y = self.new
   y.name = s_name
   y.save
   y
 end
 
 def .find_by_name(match_string)
   
   self.all.detect do {|i| i.name == match_string}
   
end
