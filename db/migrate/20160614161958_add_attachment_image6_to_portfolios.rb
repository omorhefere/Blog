class AddAttachmentImage6ToPortfolios < ActiveRecord::Migration
  def self.up
    change_table :portfolios do |t|
      t.attachment :image6
    end
  end

  def self.down
    remove_attachment :portfolios, :image6
  end
end
