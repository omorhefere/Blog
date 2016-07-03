FactoryGirl.define do
  factory :comment do
    commenter     "another_user@sheffield.ac.uk"
    body          "Simple comment"
    article_id    1
  end
end
