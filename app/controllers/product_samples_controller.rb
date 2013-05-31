class ProductSamplesController < ApplicationController
  # GET /product_samples
  # GET /product_samples.json
  def index
    @product_samples = ProductSample.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_samples }
    end
  end

  # GET /product_samples/1
  # GET /product_samples/1.json
  def show
    @product_sample = ProductSample.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_sample }
    end
  end

  # GET /product_samples/new
  # GET /product_samples/new.json
  def new
    @product_sample = ProductSample.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_sample }
    end
  end

  # GET /product_samples/1/edit
  def edit
    @product_sample = ProductSample.find(params[:id])
  end

  # POST /product_samples
  # POST /product_samples.json
  def create
    @product_sample = ProductSample.new(params[:product_sample])

    respond_to do |format|
      if @product_sample.save
        format.html { redirect_to @product_sample, notice: 'Product sample was successfully created.' }
        format.json { render json: @product_sample, status: :created, location: @product_sample }
      else
        format.html { render action: "new" }
        format.json { render json: @product_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product_samples/1
  # PUT /product_samples/1.json
  def update
    @product_sample = ProductSample.find(params[:id])

    respond_to do |format|
      if @product_sample.update_attributes(params[:product_sample])
        format.html { redirect_to @product_sample, notice: 'Product sample was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_samples/1
  # DELETE /product_samples/1.json
  def destroy
    @product_sample = ProductSample.find(params[:id])
    @product_sample.destroy

    respond_to do |format|
      format.html { redirect_to product_samples_url }
      format.json { head :no_content }
    end
  end
end
