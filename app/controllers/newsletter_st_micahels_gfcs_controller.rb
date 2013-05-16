class NewsletterStMicahelsGfcsController < ApplicationController
  # GET /newsletter_st_micahels_gfcs
  # GET /newsletter_st_micahels_gfcs.json
  def index
    @newsletter_st_micahels_gfcs = NewsletterStMicahelsGfc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @newsletter_st_micahels_gfcs }
    end
  end

  # GET /newsletter_st_micahels_gfcs/1
  # GET /newsletter_st_micahels_gfcs/1.json
  def show
    @newsletter_st_micahels_gfc = NewsletterStMicahelsGfc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @newsletter_st_micahels_gfc }
    end
  end

  # GET /newsletter_st_micahels_gfcs/new
  # GET /newsletter_st_micahels_gfcs/new.json
  def new
    @newsletter_st_micahels_gfc = NewsletterStMicahelsGfc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @newsletter_st_micahels_gfc }
    end
  end

  # GET /newsletter_st_micahels_gfcs/1/edit
  def edit
    @newsletter_st_micahels_gfc = NewsletterStMicahelsGfc.find(params[:id])
  end

  # POST /newsletter_st_micahels_gfcs
  # POST /newsletter_st_micahels_gfcs.json
  def create
    @newsletter_st_micahels_gfc = NewsletterStMicahelsGfc.new(params[:newsletter_st_micahels_gfc])

    respond_to do |format|
      if @newsletter_st_micahels_gfc.save
        format.html { redirect_to @newsletter_st_micahels_gfc, notice: 'Newsletter st micahels gfc was successfully created.' }
        format.json { render json: @newsletter_st_micahels_gfc, status: :created, location: @newsletter_st_micahels_gfc }
      else
        format.html { render action: "new" }
        format.json { render json: @newsletter_st_micahels_gfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /newsletter_st_micahels_gfcs/1
  # PUT /newsletter_st_micahels_gfcs/1.json
  def update
    @newsletter_st_micahels_gfc = NewsletterStMicahelsGfc.find(params[:id])

    respond_to do |format|
      if @newsletter_st_micahels_gfc.update_attributes(params[:newsletter_st_micahels_gfc])
        format.html { redirect_to @newsletter_st_micahels_gfc, notice: 'Newsletter st micahels gfc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @newsletter_st_micahels_gfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsletter_st_micahels_gfcs/1
  # DELETE /newsletter_st_micahels_gfcs/1.json
  def destroy
    @newsletter_st_micahels_gfc = NewsletterStMicahelsGfc.find(params[:id])
    @newsletter_st_micahels_gfc.destroy

    respond_to do |format|
      format.html { redirect_to newsletter_st_micahels_gfcs_url }
      format.json { head :no_content }
    end
  end
end
