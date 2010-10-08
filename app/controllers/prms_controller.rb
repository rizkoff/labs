class PrmsController < ApplicationController
  # GET /prms
  # GET /prms.xml
  def index
    @prms = Prm.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @prms }
    end
  end

  # GET /prms/1
  # GET /prms/1.xml
  def show
    @prm = Prm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @prm }
    end
  end

  # GET /prms/new
  # GET /prms/new.xml
  def new
    @prm = Prm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @prm }
    end
  end

  # GET /prms/1/edit
  def edit
    @prm = Prm.find(params[:id])
  end

  # POST /prms
  # POST /prms.xml
  def create
    @prm = Prm.new(params[:prm])

    respond_to do |format|
      if @prm.save
        format.html { redirect_to(@prm, :notice => 'Prm was successfully created.') }
        format.xml  { render :xml => @prm, :status => :created, :location => @prm }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @prm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /prms/1
  # PUT /prms/1.xml
  def update
    @prm = Prm.find(params[:id])

    respond_to do |format|
      if @prm.update_attributes(params[:prm])
        format.html { redirect_to(@prm, :notice => 'Prm was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @prm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /prms/1
  # DELETE /prms/1.xml
  def destroy
    @prm = Prm.find(params[:id])
    @prm.destroy

    respond_to do |format|
      format.html { redirect_to(prms_url) }
      format.xml  { head :ok }
    end
  end
end
