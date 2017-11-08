module SongsHelper
  def artist_select(artist, song)
    if artist.empty?
      select :artist_id, options_from_collection_for_select(Artist.all, :id, :name)
    else
      text_field(:song, :artist, :value=> artist.name)
    end
  end
end
