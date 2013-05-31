class ProductSample < ActiveRecord::Base
  attr_accessible :product_id, :description, :price, :size, :title, :image
  has_attached_file :image, :styles => { :thumb => "200x250>" }
  
  validates_attachment :image, :presence => true,
  :content_type => { :content_type => ['image/jpeg', 'image/jpg', 'image/png']},
  :size => { :in => 0..5000.kilobytes }
  
  validates :title, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 300 }
  validates :product_id, presence: true
  
  belongs_to :product
  
  
end
