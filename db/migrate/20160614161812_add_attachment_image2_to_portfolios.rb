class AddAttachmentImage2ToPortfolios < ActiveRecord::Migration
  def self.up
    change_table :portfolios do |t|
      t.attachment :image2
    end
  end

  def self.down
    remove_attachment :portfolios, :image2
  end
end
