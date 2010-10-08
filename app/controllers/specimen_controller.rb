class SpecimenController < ApplicationController
  # GET /specimen
  # GET /specimen.xml
  def index
    @specimen = Speciman.search(params[:search])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @specimen }
    end
  end

  # GET /specimen/1
  # GET /specimen/1.xml
  def show
    @speciman = Speciman.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @speciman }
    end
  end

  # GET /specimen/new
  # GET /specimen/new.xml
  def new
    @speciman = Speciman.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @speciman }
    end
  end

  # GET /specimen/1/edit
  def edit
    @speciman = Speciman.find(params[:id])
  end

  # POST /specimen
  # POST /specimen.xml
  def create
    @speciman = Speciman.new(params[:speciman])

    respond_to do |format|
      if @speciman.save
        format.html { redirect_to(specimen_path, :notice => (t 'specimen.notice.created')) }
        format.xml  { render :xml => @speciman, :status => :created, :location => @speciman }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @speciman.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /specimen/1
  # PUT /specimen/1.xml
  def update
    @speciman = Speciman.find(params[:id])

    respond_to do |format|
      if @speciman.update_attributes(params[:speciman])
        format.html { redirect_to(specimen_path, :notice => (t 'specimen.notice.saved')) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @speciman.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /specimen/1
  # DELETE /specimen/1.xml
  def destroy
    @speciman = Speciman.find(params[:id])
    @speciman.destroy

    respond_to do |format|
      format.html { redirect_to(specimen_url) }
      format.xml  { head :ok }
    end
  end
end
