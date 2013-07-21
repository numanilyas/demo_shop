module HomeHelper
  def get_product_id(sample_id)
    product_id = ProductSample.find(sample_id).product.slug
  end
  
  def trim_meta_description(description)
    if description.length > 160
      desc = description[0..157] + "..."
    else
      description
    end
    
  end
end
