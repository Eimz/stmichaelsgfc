class PlayersProfilesController < ApplicationController
  # GET /players_profiles
  # GET /players_profiles.json
  def index
    @players_profiles = PlayersProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @players_profiles }
    end
  end

  # GET /players_profiles/1
  # GET /players_profiles/1.json
  def show
    @players_profile = PlayersProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @players_profile }
    end
  end

  # GET /players_profiles/new
  # GET /players_profiles/new.json
  def new
    @players_profile = PlayersProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @players_profile }
    end
  end

  # GET /players_profiles/1/edit
  def edit
    @players_profile = PlayersProfile.find(params[:id])
  end

  # POST /players_profiles
  # POST /players_profiles.json
  def create
    @players_profile = PlayersProfile.new(params[:players_profile])

    respond_to do |format|
      if @players_profile.save
        format.html { redirect_to @players_profile, notice: 'Players profile was successfully created.' }
        format.json { render json: @players_profile, status: :created, location: @players_profile }
      else
        format.html { render action: "new" }
        format.json { render json: @players_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /players_profiles/1
  # PUT /players_profiles/1.json
  def update
    @players_profile = PlayersProfile.find(params[:id])

    respond_to do |format|
      if @players_profile.update_attributes(params[:players_profile])
        format.html { redirect_to @players_profile, notice: 'Players profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @players_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players_profiles/1
  # DELETE /players_profiles/1.json
  def destroy
    @players_profile = PlayersProfile.find(params[:id])
    @players_profile.destroy

    respond_to do |format|
      format.html { redirect_to players_profiles_url }
      format.json { head :no_content }
    end
  end
end
