class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_first_product_id
  
  def set_first_product_id    
    @first_id = Product.all.first.slug
    if @first_id.nil?
      @first_id = []
    end
    
    @products = Product.all
    if @products.nil?
      @products = []
    end
           
  end
end
