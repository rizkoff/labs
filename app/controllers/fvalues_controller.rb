class FvaluesController < ApplicationController
  before_filter :get_shipment
  # GET /fvalues
  # GET /fvalues.xml
  def index
    @fvalues = @shipment.fvalues.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fvalues }
    end
  end

  # GET /fvalues/1
  # GET /fvalues/1.xml
  def show
    @fvalue = @shipment.fvalues.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fvalue }
    end
  end

  # GET /fvalues/new
  # GET /fvalues/new.xml
  #def new
  #  @fvalue = @shipment.fvalues.new
#
  #  respond_to do |format|
  #    format.html # new.html.erb
  #    format.xml  { render :xml => @fvalue }
  #  end
  #end

  # GET /fvalues/1/edit
  def edit
    @fvalue = @shipment.fvalues.find(params[:id])
  end

  # POST /fvalues
  # POST /fvalues.xml
  #def create
  #  @fvalue = @shipment.fvalues.new(params[:fvalue])
#
  #  respond_to do |format|
  #    if @fvalue.save
  #      format.html { redirect_to(@fvalue, :notice => 'Fvalue was successfully created.') }
  #      format.xml  { render :xml => @fvalue, :status => :created, :location => @fvalue }
  #    else
  #      format.html { render :action => "new" }
  #      format.xml  { render :xml => @fvalue.errors, :status => :unprocessable_entity }
  #    end
  #  end
  #end

  # PUT /fvalues/1
  # PUT /fvalues/1.xml
  def update
    @fvalue = @shipment.fvalues.find(params[:id])

    respond_to do |format|
      if @fvalue.update_attributes(params[:fvalue])
        format.html { redirect_to([@speciman, @shipment, @fvalue], :notice => 'Fvalue was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fvalue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fvalues/1
  # DELETE /fvalues/1.xml
  #def destroy
  #  @fvalue = @shipment.fvalues.find(params[:id])
  #  @fvalue.destroy
#
#    respond_to do |format|
#      format.html { redirect_to(speciman_shipment_fvalues_url(@speciman, @shipment)) }
#      format.xml  { head :ok }
#    end
#  end

  private

  def get_shipment
    @shipment = Shipment.find params[:shipment_id]
    @speciman = @shipment.speciman
  end

end
