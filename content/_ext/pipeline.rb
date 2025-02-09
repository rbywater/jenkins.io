require 'yearposts'

Awestruct::Extensions::Pipeline.new do
  # Register all our blog content under the `site.posts` variable
  extension YearPosts.new('/blog', :posts)

  extension Awestruct::Extensions::Indexifier.new
  extension Awestruct::Extensions::Sitemap.new
  extension Awestruct::Extensions::DataDir.new

  #extension Awestruct::Extensions::Tagger.new(:posts,
  #                                             '/blog')

  extension Awestruct::Extensions::Paginator.new(:posts,
                                                  '/node/index',
                                                  :per_page=> 8)

  extension Awestruct::Extensions::Atomizer.new(:posts,
                                                '/rss.xml',
                                                :feed_title => 'Jenkins Blog')

  helper Awestruct::Extensions::Partial
  helper Awestruct::Extensions::GoogleAnalytics
end

