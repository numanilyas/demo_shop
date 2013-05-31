class HomeController < ApplicationController
  def index
    @products = Product.all 
  end
  
  def samples
    @products = Product.all
    #@product_samples = Product.find(5).product_samples
    if (params.has_key?(:id))
      @product_samples = Product.find(params[:id]).product_samples  
    else      
      @product_samples = Product.all.first.product_samples
      @first_id = Product.all.first.id 
    end
    
  end
  
  def aboutus
    @products = Product.all
  end
  
  def contactus
    @products = Product.all
  end
  
  def howwework
    @products = Product.all
  end
  
  def pricing
    @products = Product.all
  end
  
end
