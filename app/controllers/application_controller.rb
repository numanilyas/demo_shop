class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_first_product_id
  
  def set_first_product_id    
    @products = Product.all
    if @products.nil?
      @products = []
    end           
  end
  
  #rescue_from Exception, :with => :rescue_all_exceptions #if RAILS_ENV == 'production'
  
  #def rescue_all_exceptions(exception)
    #case exception
     # when ActiveRecord::RecordNotFound
     #   render :text => "The requested resource was not found", :status => :not_found
     # when ActionController::RoutingError, ActionController::UnknownController, ActionController::UnknownAction
     #   render :text => "Invalid request", :status => :not_found
     # else
        #logger.error( "\nWhile processing a #{request.method} request on #{request.path}\n
        #parameters: #{request.parameters.inpect}\n
        ##{exception.message}\n#{exception.clean_backtrace.join( "\n" )}\n\n" )
        #render :text => "An internal error occurred. Sorry for inconvenience", :status => :internal_server_error
    #end
  #end
end
