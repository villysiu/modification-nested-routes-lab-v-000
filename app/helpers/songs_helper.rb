module SongsHelper
  def artist_select(artist, song)
    if artist.nil?
      f.select :artist_id, options_from_collection_for_select(Artist.all, :id, :name)
    else
      f.text_field :artist_name
    end
  end
end
