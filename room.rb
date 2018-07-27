class Room

  attr_reader :name

  def initialize(name, songs, guests)
    @name = name
    @songs = songs
    @guests = guests
  end

  def count_songs()
    return @songs.count()
  end

  def count_guests()
    return @guests.count()
  end

  def check_in_guest(guest)
    @guests.push(guest)
  end

  def checkout_guest(guest)
    @guests.delete(guest)
  end

  def add_song(song)
    @songs.push(song)
  end

end
