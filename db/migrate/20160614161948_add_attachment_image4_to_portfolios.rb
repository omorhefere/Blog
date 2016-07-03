class AddAttachmentImage4ToPortfolios < ActiveRecord::Migration
  def self.up
    change_table :portfolios do |t|
      t.attachment :image4
    end
  end

  def self.down
    remove_attachment :portfolios, :image4
  end
end
