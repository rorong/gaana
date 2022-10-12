class PlaylistsSongsController < ApplicationController
  before_action :set_playlists_song, only: %i[ show edit update destroy ]

  # GET /playlists_songs or /playlists_songs.json
  def index
    @playlists_songs = PlaylistsSong.all
  end

  # GET /playlists_songs/1 or /playlists_songs/1.json
  def show
  end

  # GET /playlists_songs/new
  def new
    @playlists_song = PlaylistsSong.new
  end

  # GET /playlists_songs/1/edit
  def edit
  end

  # POST /playlists_songs or /playlists_songs.json
  def create
    @playlists_song = PlaylistsSong.new(playlists_song_params)

    respond_to do |format|
      if @playlists_song.save
        format.html { redirect_to playlists_song_url(@playlists_song), notice: "Playlists song was successfully created." }
        format.json { render :show, status: :created, location: @playlists_song }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @playlists_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playlists_songs/1 or /playlists_songs/1.json
  def update
    respond_to do |format|
      if @playlists_song.update(playlists_song_params)
        format.html { redirect_to playlists_song_url(@playlists_song), notice: "Playlists song was successfully updated." }
        format.json { render :show, status: :ok, location: @playlists_song }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @playlists_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playlists_songs/1 or /playlists_songs/1.json
  def destroy
    @playlists_song.destroy

    respond_to do |format|
      format.html { redirect_to playlists_songs_url, notice: "Playlists song was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlists_song
      @playlists_song = PlaylistsSong.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def playlists_song_params
      params.require(:playlists_song).permit(:playlist_id, :song_id)
    end
end
