class Article < ActiveRecord::Base
  #Shows the comments.
  has_many :comments, dependent: :destroy

  has_many :taggings
  has_many :tags, through: :taggings
  #validates the title
  validates :title, presence: true,
                    length: { minimum: 5 }
  #Attach and process image for article
  has_attached_file :avatar, styles: { medium: "600x600>", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def all_tags=(names)
    self.tags = names.split(","),map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end

  def self.tagged_with(name)
    Tag.find_by_name!(name).articles
  end
end
