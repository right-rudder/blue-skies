# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://flytheblueskies.com"

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
add '/blue-skies-above-booklet.pdf'
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

### DYNAMIC ROUTES

add '/pilot-training/woodland-hills-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/auburn-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/opelika-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/woodland-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/notasulga-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/loachapoka-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/tuskegee-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/tallassee-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/waverly-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/camp-hill-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/dadeville-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/jacksons-gap-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/alexander-city-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/new-site-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/daviston-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/goodwater-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/ashland-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/wadley-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/lineville-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/wedowee-alabama-flight-school', changefreq: 'weekly'
add '/pilot-training/ephesus-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/centralhatchee-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/riverside-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/franklin-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/hogansville-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/lagrange-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/greenville-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/manchester-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/hamilton-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/waverly-hall-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/talbotton-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/junction-city-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/geneva-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/columbus-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/bibb-city-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/fort-moore-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/cusseta-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/buena-vista-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/richland-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/lumpkin-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/georgetown-georgia-flight-school', changefreq: 'weekly'
add '/pilot-training/eufaula-georgia-flight-school', changefreq: 'weekly'


end
