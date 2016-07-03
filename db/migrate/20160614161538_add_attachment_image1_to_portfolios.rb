class AddAttachmentImage1ToPortfolios < ActiveRecord::Migration
  def self.up
    change_table :portfolios do |t|
      t.attachment :image1
    end
  end

  def self.down
    remove_attachment :portfolios, :image1
  end
end
