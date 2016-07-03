class AddAttachmentImage3ToPortfolios < ActiveRecord::Migration
  def self.up
    change_table :portfolios do |t|
      t.attachment :image3
    end
  end

  def self.down
    remove_attachment :portfolios, :image3
  end
end
