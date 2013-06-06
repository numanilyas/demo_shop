class HomeController < ApplicationController
  def index    
  end
  
  def samples
    @product = Product.find(params[:id])
    @product_samples = Product.find(params[:id]).product_samples.paginate(page: params[:page], :per_page => 6)
  end
  
  def aboutus
  end
  
  def contactus
  end
  
  def howwework
  end
  
  def pricing
  end
    
end
