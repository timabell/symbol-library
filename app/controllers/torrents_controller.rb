class TorrentsController < ApplicationController
  before_action :set_torrent, only: [:show, :edit, :update, :destroy, :download]
  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]
  before_action :require_ownership, only: [:edit, :update, :destroy]

  def index
    @torrents = Torrent.where(user_id: current_user.id)
  end

  def downloads
    @torrents = Torrent.all
  end

  def show
  end

  def new
    @torrent = Torrent.new
  end

  def edit
  end

  def create
    @torrent = Torrent.new(torrent_params)
    @torrent.user = current_user

    if @torrent.save
      redirect_to [current_user, @torrent], notice: 'Torrent was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @torrent.update(torrent_params)
      redirect_to [current_user, @torrent], notice: 'Torrent was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @torrent.destroy
    redirect_to user_torrents_url, notice: 'Torrent was successfully destroyed.'
  end

  private
    def set_torrent
      @torrent = Torrent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def torrent_params
      params.require(:torrent).permit(:name)
    end

    def require_login
      unless current_user
        flash[:error] = "You must be logged in to do this"
        redirect_to new_user_session_path
      end
    end

    def require_ownership
      #TODO replace with 403
      throw "denied" unless @torrent.user_id == current_user.id
    end
end
