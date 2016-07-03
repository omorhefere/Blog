class Tagging < ActiveRecord::Base
  # the associations between blog posts and tags.
  belongs_to :tag
  belongs_to :article
  belongs_to :portfolio
end
