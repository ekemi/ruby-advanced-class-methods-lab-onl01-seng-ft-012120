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
 
 def self.find_by_name(match_string)
   
   self.all.detect {|i| i.name == match_string}
 end
 def self.find_or_create_by_name(find_this_song)
    # This method will accept a string name for a song and 
    # either return a matching song instance with that name 
    # or create a new song with the name and return the song instance.
    did_i_find_it = self.all.detect {|x| x.name == find_this_song}
    if did_i_find_it == nil
      s = self.new 
      s.name = find_this_song
      s.save 
      s
    else
      did_i_find_it
    end
  end
   
end
