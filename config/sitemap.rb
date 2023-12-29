# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "flytheblueskies.com"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end

  # Sitemap entries

add '/pilot-training-programs-and-courses'
add '/private-pilot-certificate-ppl'
add '/instrument-rating-ifr'
add '/commercial-pilot-certificate-cpl'
add '/certified-flight-instructor-cfi'
add '/flight-instructor-instrument-cfii'
add '/should-i-become-a-pilot'
add '/privacy-policy-terms-of-service'
add '/why-choose-blue-skies-above'
add '/about-us'

add '/blog'

#forms
add '/enroll-at-blue-skies'
#add '/enrollment-confirmation'
add '/contact'
#add '/contact-confirmation'
add '/join-team'
add '/discovery-flight'
add '/visit-flight-school'
#add '/visit-flight-school-confirmation'


end
