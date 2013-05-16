class SignUpNewslettersController < ApplicationController
  # GET /sign_up_newsletters
  # GET /sign_up_newsletters.json
  def index
    @sign_up_newsletters = SignUpNewsletter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sign_up_newsletters }
    end
  end

  # GET /sign_up_newsletters/1
  # GET /sign_up_newsletters/1.json
  def show
    @sign_up_newsletter = SignUpNewsletter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sign_up_newsletter }
    end
  end

  # GET /sign_up_newsletters/new
  # GET /sign_up_newsletters/new.json
  def new
    @sign_up_newsletter = SignUpNewsletter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sign_up_newsletter }
    end
  end

  # GET /sign_up_newsletters/1/edit
  def edit
    @sign_up_newsletter = SignUpNewsletter.find(params[:id])
  end

  # POST /sign_up_newsletters
  # POST /sign_up_newsletters.json
  def create
    @sign_up_newsletter = SignUpNewsletter.new(params[:sign_up_newsletter])

    respond_to do |format|
      if @sign_up_newsletter.save
        format.html { redirect_to @sign_up_newsletter, notice: 'Sign up newsletter was successfully created.' }
        format.json { render json: @sign_up_newsletter, status: :created, location: @sign_up_newsletter }
      else
        format.html { render action: "new" }
        format.json { render json: @sign_up_newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sign_up_newsletters/1
  # PUT /sign_up_newsletters/1.json
  def update
    @sign_up_newsletter = SignUpNewsletter.find(params[:id])

    respond_to do |format|
      if @sign_up_newsletter.update_attributes(params[:sign_up_newsletter])
        format.html { redirect_to @sign_up_newsletter, notice: 'Sign up newsletter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sign_up_newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sign_up_newsletters/1
  # DELETE /sign_up_newsletters/1.json
  def destroy
    @sign_up_newsletter = SignUpNewsletter.find(params[:id])
    @sign_up_newsletter.destroy

    respond_to do |format|
      format.html { redirect_to sign_up_newsletters_url }
      format.json { head :no_content }
    end
  end
end
