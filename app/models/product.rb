class Product < ActiveRecord::Base
  extend FriendlyId
  attr_accessible :description, :size, :title, :image
  has_attached_file :image
  
  validates_attachment :image, :presence => true,
  :content_type => { :content_type => ['image/jpeg', 'image/jpg', 'image/png']},
  :size => { :in => 0..5000.kilobytes }  
  
  validates :title, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :description, presence: true, length: { maximum: 300 }
  
  has_many :product_samples, dependent: :destroy
  
  friendly_id :title, :use => :slugged
  validates_presence_of :slug
  
end
