Time.zone = 'Tokyo'


set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, smartypants: true, with_toc_data: true, tables: true, autolink: true, gh_blockcode: true

activate :syntax


page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false


configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end

# ブログ機能の設定
activate :blog do |blog|
  # 以下の設定によりsource直下のarticle/tipsディレクトリ内の
  # yyyy-mm-dd-title.html.xxx形式のファイルがbuild対象になる
  blog.sources = "{article}/{year}-{month}-{day}-{title}.html"
  blog.permalink = "article/{year}/{month}/{day}/{title}.html"
end
