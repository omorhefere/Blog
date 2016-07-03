class Comment < ActiveRecord::Base
  #Relationship
  belongs_to :article
  #Comments must have a body and commenter
  validates :commenter, :body, presence: true
end
