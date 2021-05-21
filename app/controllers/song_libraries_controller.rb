class SongLibrariesController < ApplicationController
  before_action :set_song_library, only: [:show, :edit, :update, :destroy]

  # GET /song_libraries
  # GET /song_libraries.json
  def index
    @song_libraries = SongLibrary.all
  end

  # GET /song_libraries/1
  # GET /song_libraries/1.json
  def show
  end

  # GET /song_libraries/new
  def new
    @song_library = SongLibrary.new
  end

  # GET /song_libraries/1/edit
  def edit
  end

  # POST /song_libraries
  # POST /song_libraries.json
  def create
    @song_library = SongLibrary.new(song_library_params)

    respond_to do |format|
      if @song_library.save
        format.html { redirect_to @song_library, notice: 'Song library was successfully created.' }
        format.json { render :show, status: :created, location: @song_library }
      else
        format.html { render :new }
        format.json { render json: @song_library.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /song_libraries/1
  # PATCH/PUT /song_libraries/1.json
  def update
    respond_to do |format|
      if @song_library.update(song_library_params)
        format.html { redirect_to @song_library, notice: 'Song library was successfully updated.' }
        format.json { render :show, status: :ok, location: @song_library }
      else
        format.html { render :edit }
        format.json { render json: @song_library.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /song_libraries/1
  # DELETE /song_libraries/1.json
  def destroy
    @song_library.destroy
    respond_to do |format|
      format.html { redirect_to song_libraries_url, notice: 'Song library was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_library
      @song_library = SongLibrary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def song_library_params
      params.require(:song_library).permit(:Song_id, :Title, :Artist, :Release_Date, :Price)
    end
end
