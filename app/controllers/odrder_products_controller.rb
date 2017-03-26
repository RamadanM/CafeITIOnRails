class OdrderProductsController < ApplicationController
  before_action :set_odrder_product, only: [:show, :edit, :update, :destroy]

  # GET /odrder_products
  # GET /odrder_products.json
  def index
    @odrder_products = OdrderProduct.all
  end

  # GET /odrder_products/1
  # GET /odrder_products/1.json
  def show
  end

  # GET /odrder_products/new
  def new
    @odrder_product = OdrderProduct.new
  end

  # GET /odrder_products/1/edit
  def edit
  end

  # POST /odrder_products
  # POST /odrder_products.json
  def create
    @odrder_product = OdrderProduct.new(odrder_product_params)

    respond_to do |format|
      if @odrder_product.save
        format.html { redirect_to @odrder_product, notice: 'Odrder product was successfully created.' }
        format.json { render :show, status: :created, location: @odrder_product }
      else
        format.html { render :new }
        format.json { render json: @odrder_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /odrder_products/1
  # PATCH/PUT /odrder_products/1.json
  def update
    respond_to do |format|
      if @odrder_product.update(odrder_product_params)
        format.html { redirect_to @odrder_product, notice: 'Odrder product was successfully updated.' }
        format.json { render :show, status: :ok, location: @odrder_product }
      else
        format.html { render :edit }
        format.json { render json: @odrder_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /odrder_products/1
  # DELETE /odrder_products/1.json
  def destroy
    @odrder_product.destroy
    respond_to do |format|
      format.html { redirect_to odrder_products_url, notice: 'Odrder product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_odrder_product
      @odrder_product = OdrderProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def odrder_product_params
      params.require(:odrder_product).permit(:order_id, :product_id)
    end
end
