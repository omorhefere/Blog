class AddAttachmentImage5ToPortfolios < ActiveRecord::Migration
  def self.up
    change_table :portfolios do |t|
      t.attachment :image5
    end
  end

  def self.down
    remove_attachment :portfolios, :image5
  end
end
