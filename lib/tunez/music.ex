defmodule Tunez.Music do
  use Ash.Domain,
    otp_app: :tunez

  resources do
    resource Tunez.Music.Artist do
      define :create_artist, action: :create
      define :read_artists, action: :read
      define :get_artist_by_id, action: :read, get_by: :id
      define :update_artist, action: :update
      define :destroy_artist, action: :destroy
      define :destroy_artist_by_id, action: :destroy, get_by: :id
    end
  end
end
