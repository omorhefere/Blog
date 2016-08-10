# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.ooimoloame.co.uk"
# pick a safe place safe to write the files
SitemapGenerator::Sitemap.public_path = 'tmp/sitemaps/'

SitemapGenerator::Sitemap.create do
  add portfolio_path, changefreq: 'weekly'
  add me_path





   Article.find_each do |article|
     add article_path(article), :lastmod => article.updated_at
   end
   
end
