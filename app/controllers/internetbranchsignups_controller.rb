class InternetbranchsignupsController < ApplicationController
  # GET /internetbranchsignups
  # GET /internetbranchsignups.xml
  def index
    @internetbranchsignups = Internetbranchsignup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @internetbranchsignups }
    end
  end

  # GET /internetbranchsignups/1
  # GET /internetbranchsignups/1.xml
  def show
    @internetbranchsignup = Internetbranchsignup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @internetbranchsignup }
    end
  end

  # GET /internetbranchsignups/new
  # GET /internetbranchsignups/new.xml
  def new
    @internetbranchsignup = Internetbranchsignup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @internetbranchsignup }
    end
  end

  # GET /internetbranchsignups/1/edit
  def edit
    @internetbranchsignup = Internetbranchsignup.find(params[:id])
  end

  # POST /internetbranchsignups
  # POST /internetbranchsignups.xml
  def create
    @internetbranchsignup = Internetbranchsignup.new(params[:internetbranchsignup])

    respond_to do |format|
      if @internetbranchsignup.save
        flash[:notice] = 'Internetbranchsignup was successfully created.'
        format.html { redirect_to(new_hb_login_path) }
        format.xml  { render :xml => @internetbranchsignup, :status => :created, :location => @internetbranchsignup }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @internetbranchsignup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /internetbranchsignups/1
  # PUT /internetbranchsignups/1.xml
  def update
    @internetbranchsignup = Internetbranchsignup.find(params[:id])

    respond_to do |format|
      if @internetbranchsignup.update_attributes(params[:internetbranchsignup])
        flash[:notice] = 'Internetbranchsignup was successfully updated.'
        format.html { redirect_to(@internetbranchsignup) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @internetbranchsignup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /internetbranchsignups/1
  # DELETE /internetbranchsignups/1.xml
  def destroy
    @internetbranchsignup = Internetbranchsignup.find(params[:id])
    @internetbranchsignup.destroy

    respond_to do |format|
      format.html { redirect_to(internetbranchsignups_url) }
      format.xml  { head :ok }
    end
  end
end
