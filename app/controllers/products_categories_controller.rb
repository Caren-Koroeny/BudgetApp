class ProductsCategoriesController < ApplicationController
  before_action :set_products_category, only: %i[ show edit update destroy ]

  # GET /products_categories or /products_categories.json
  def index
    @products_categories = ProductsCategory.all
  end

  # GET /products_categories/1 or /products_categories/1.json
  def show
  end

  # GET /products_categories/new
  def new
    @products_category = ProductsCategory.new
  end

  # GET /products_categories/1/edit
  def edit
  end

  # POST /products_categories or /products_categories.json
  def create
    @products_category = ProductsCategory.new(products_category_params)

    respond_to do |format|
      if @products_category.save
        format.html { redirect_to products_category_url(@products_category), notice: "Products category was successfully created." }
        format.json { render :show, status: :created, location: @products_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @products_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products_categories/1 or /products_categories/1.json
  def update
    respond_to do |format|
      if @products_category.update(products_category_params)
        format.html { redirect_to products_category_url(@products_category), notice: "Products category was successfully updated." }
        format.json { render :show, status: :ok, location: @products_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @products_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products_categories/1 or /products_categories/1.json
  def destroy
    @products_category.destroy

    respond_to do |format|
      format.html { redirect_to products_categories_url, notice: "Products category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_products_category
      @products_category = ProductsCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def products_category_params
      params.fetch(:products_category, {})
    end
end
