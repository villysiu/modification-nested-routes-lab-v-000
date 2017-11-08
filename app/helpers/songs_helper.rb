module SongsHelper
  def artist_select(artist, song)
    if artist.nil?
      select :artist_id, options_from_collection_for_select(Artist.all, :id, :name)
    else
      text_field ":artist_name", artist.name
    end
  end
end
