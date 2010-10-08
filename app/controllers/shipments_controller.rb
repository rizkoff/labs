class ShipmentsController < ApplicationController
  before_filter :get_speciman
  # GET /shipments
  # GET /shipments.xml
  def passport
    @shipment = @speciman.shipments.find(params[:id])

    respond_to do |format|
      format.html {render :html => :passport, :layout => 'printer'}
      format.xml  { render :xml => @shipments }
    end
    
  end

  def index
    @shipments = @speciman.shipments.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @shipments }
    end
  end

  # GET /shipments/1
  # GET /shipments/1.xml
  def show
    @shipment = @speciman.shipments.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @shipment }
    end
  end

  # GET /shipments/new
  # GET /shipments/new.xml
  def new
    @shipment = @speciman.shipments.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @shipment }
    end
  end

  # GET /shipments/1/edit
  def edit
    @shipment = @speciman.shipments.find(params[:id])
  end

  # POST /shipments
  # POST /shipments.xml
  def create
    @shipment = @speciman.shipments.new(params[:shipment])

    respond_to do |format|
      if @shipment.save
        format.html { redirect_to([@speciman, @shipment], :notice => 'Shipment was successfully created.') }
        format.xml  { render :xml => @shipment, :status => :created, :location => @shipment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @shipment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shipments/1
  # PUT /shipments/1.xml
  def update
    @shipment = @speciman.shipments.find(params[:id])

    respond_to do |format|
      if @shipment.update_attributes(params[:shipment])
        format.html { redirect_to(speciman_shipment_fvalues_path(@speciman, @shipment), :notice => 'Shipment was successfully updated.') }
        # format.html { redirect_to([@speciman, @shipment], :notice => 'Shipment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @shipment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shipments/1
  # DELETE /shipments/1.xml
  def destroy
    @shipment = @speciman.shipments.find(params[:id])
    @shipment.destroy

    respond_to do |format|
      format.html { redirect_to(speciman_shipments_url(@speciman)) }
      format.xml  { head :ok }
    end
  end

  private

    def get_speciman
      @speciman = Speciman.find params[:speciman_id]
    end

end
