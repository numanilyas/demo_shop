class HomeController < ApplicationController
  def index    
  end
  
  def samples    
    @product = Product.find(params[:id])
    @product_samples = Product.find(params[:id]).product_samples.paginate(page: params[:page], :per_page => 6)
  rescue ActiveRecord::RecordNotFound
    flash[:error] = "The requested samples page is not found, please select the appropriate category under Samples from sidebar."
    redirect_to :action => 'samples', :id => @first_id 
  end
  
  def products
    @products = Product.paginate(page: params[:page], :per_page => 10)
  end
  
  def aboutus
  end
  
  def contactus
  end
  
  def howwework
  end
  
  def pricing
  end
  
  def faqs    
  end
  
  def sitemap    
  end
  
  def routing_error
  end
  
  def privacypolicy    
  end  
    
end
