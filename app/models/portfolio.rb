class Portfolio < ActiveRecord::Base
  #validates the title
  validates :title, presence: true,
                    length: { minimum: 5 }

  has_many :taggings
  has_many :tags, through: :taggings

  #Attach and process image for article
  has_attached_file :image1, styles: { medium: " 300x 300>", thumb: "100x100>" }
  has_attached_file :image2, styles: { medium: " 300x 300>", thumb: "100x100>" }
  has_attached_file :image3, styles: { medium: " 300x 300>", thumb: "100x100>" }
  has_attached_file :image4, styles: { medium: " 300x 300>", thumb: "100x100>" }
  has_attached_file :image5, styles: { medium: " 300x 300>", thumb: "100x100>" }
  has_attached_file :image6, styles: { medium: " 300x 300>", thumb: "100x100>" }
  validates_attachment_content_type :image1, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :image2, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :image3, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :image4, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :image5, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :image6, content_type: /\Aimage\/.*\Z/


  def all_tags=(names)
    self.tags = names.split(", "),map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end
  def self.tagged_with(name)
    Tag.find_by_name!(name).portfolios
  end
end
