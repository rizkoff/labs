class FactorsController < ApplicationController
  before_filter :get_speciman
  # GET /factors
  # GET /factors.xml
  def index
    @factors = @speciman.factors.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @factors }
    end
  end

  # GET /factors/1
  # GET /factors/1.xml
  def show
    @factor = @speciman.factors.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @factor }
    end
  end

  # GET /factors/new
  # GET /factors/new.xml
  def new
    @factor = @speciman.factors.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @factor }
    end
  end

  # GET /factors/1/edit
  def edit
    @factor = @speciman.factors.find(params[:id])
  end

  # POST /factors
  # POST /factors.xml
  def create
    @factor = @speciman.factors.new(params[:factor])

    respond_to do |format|
      if @factor.save
        format.html { redirect_to([@speciman, @factor], :notice => 'Factor was successfully created.') }
        format.xml  { render :xml => @factor, :status => :created, :location => @factor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @factor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /factors/1
  # PUT /factors/1.xml
  def update
    @factor = @speciman.factors.find(params[:id])

    respond_to do |format|
      if @factor.update_attributes(params[:factor])
        format.html { redirect_to([@speciman, @factor], :notice => 'Factor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @factor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /factors/1
  # DELETE /factors/1.xml
  def destroy
    @factor = @speciman.factors.find(params[:id])
    @factor.destroy

    respond_to do |format|
      format.html { redirect_to(speciman_factors_url(@speciman)) }
      format.xml  { head :ok }
    end
  end

  private

    def get_speciman
      @speciman = Speciman.find params[:speciman_id]
    end

end
