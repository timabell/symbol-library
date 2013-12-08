class TorrentsController < ApplicationController
  before_action :set_torrent, only: [:show, :edit, :update, :destroy]

  # GET /torrents
  def index
    @torrents = Torrent.all
  end

  # GET /torrents/1
  def show
  end

  # GET /torrents/new
  def new
    @torrent = Torrent.new
  end

  # GET /torrents/1/edit
  def edit
  end

  # POST /torrents
  def create
    @torrent = Torrent.new(torrent_params)

    if @torrent.save
      redirect_to @torrent, notice: 'Torrent was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /torrents/1
  def update
    if @torrent.update(torrent_params)
      redirect_to @torrent, notice: 'Torrent was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /torrents/1
  def destroy
    @torrent.destroy
    redirect_to torrents_url, notice: 'Torrent was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_torrent
      @torrent = Torrent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def torrent_params
      params.require(:torrent).permit(:filename)
    end
end
