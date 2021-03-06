# sitemap.rake
require 'aws-sdk'

namespace :sitemap do
  desc 'Upload the sitemap files to S3'
  task upload_to_s3: :environment do
    puts "Starting sitemap upload to S3..."

    s3 = AWS::S3.new(access_key_id: ENV['S3_ACCESS_KEY_ID'],
                     secret_access_key: ENV['S3_SECRET_ACCESS_KEY'])

    bucket = s3.buckets[ENV['S3_BUCKET']]

    Dir.entries(File.join(Rails.root, "tmp", "sitemaps")).each do |file_name|
      next if ['.', '..', '.DS_Store'].include? file_name
      path = "sitemaps/#{file_name}"
      file = File.join(Rails.root, "tmp", "sitemaps", file_name)

      begin
        object = bucket.objects[path]
        object.write(file: file)
      rescue Exception => e
        raise e
      end
      puts "Saved #{file_name} to S3"
    end
  end
end

# sitemap.rake
namespace :sitemap do
  # ...
  desc 'Create the sitemap, then upload it to S3 and ping the search engines'
  task create_upload_and_ping: :environment do
    Rake::Task["sitemap:create"].invoke

    Rake::Task["sitemap:upload_to_s3"].invoke

    SitemapGenerator::Sitemap.ping_search_engines('http://www.ooimoloame.co.uk/sitemap.xml.gz')
  end
end
