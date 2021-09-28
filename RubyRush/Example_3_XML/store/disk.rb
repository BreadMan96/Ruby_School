class Disk < Product
  def update(options)
    @game_name = options[:game_name] #album_name
    @creator = options[:creator] #artist_name
    @genre = options[:genre]
  end

  def info
    "Game #{@game_name} || Creator: #{@creator} (#{@genre})"
  end
end