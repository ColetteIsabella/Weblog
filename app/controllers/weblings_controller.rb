class WeblingsController < ApplicationController
  # GET /weblings
  # GET /weblings.json
  def index
    @weblings = Webling.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weblings }
    end
  end

  # GET /weblings/1
  # GET /weblings/1.json
  def show
    @webling = Webling.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @webling }
    end
  end

  # GET /weblings/new
  # GET /weblings/new.json
  def new
    @webling = Webling.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @webling }
    end
  end

  # GET /weblings/1/edit
  def edit
    @webling = Webling.find(params[:id])
  end

  # POST /weblings
  # POST /weblings.json
  def create
    @webling = Webling.new(params[:webling])

    respond_to do |format|
      if @webling.save
        format.html { redirect_to @webling, notice: 'Webling was successfully created.' }
        format.json { render json: @webling, status: :created, location: @webling }
      else
        format.html { render action: "new" }
        format.json { render json: @webling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weblings/1
  # PUT /weblings/1.json
  def update
    @webling = Webling.find(params[:id])

    respond_to do |format|
      if @webling.update_attributes(params[:webling])
        format.html { redirect_to @webling, notice: 'Webling was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @webling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weblings/1
  # DELETE /weblings/1.json
  def destroy
    @webling = Webling.find(params[:id])
    @webling.destroy

    respond_to do |format|
      format.html { redirect_to weblings_url }
      format.json { head :no_content }
    end
  end
end
