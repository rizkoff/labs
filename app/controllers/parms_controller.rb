class ParmsController < ApplicationController
  # GET /parms
  # GET /parms.xml
  def index
    @parms = Parm.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @parms }
    end
  end

  # GET /parms/1
  # GET /parms/1.xml
  def show
    @parm = Parm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @parm }
    end
  end

  # GET /parms/new
  # GET /parms/new.xml
  def new
    @parm = Parm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @parm }
    end
  end

  # GET /parms/1/edit
  def edit
    @parm = Parm.find(params[:id])
  end

  # POST /parms
  # POST /parms.xml
  def create
    @parm = Parm.new(params[:parm])

    respond_to do |format|
      if @parm.save
        format.html { redirect_to(@parm, :notice => 'Parm was successfully created.') }
        format.xml  { render :xml => @parm, :status => :created, :location => @parm }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @parm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /parms/1
  # PUT /parms/1.xml
  def update
    @parm = Parm.find(params[:id])

    respond_to do |format|
      if @parm.update_attributes(params[:parm])
        format.html { redirect_to(@parm, :notice => 'Parm was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @parm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /parms/1
  # DELETE /parms/1.xml
  def destroy
    @parm = Parm.find(params[:id])
    @parm.destroy

    respond_to do |format|
      format.html { redirect_to(parms_url) }
      format.xml  { head :ok }
    end
  end
end
