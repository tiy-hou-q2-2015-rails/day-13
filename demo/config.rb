###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
helpers do

  def draw_position(row, column)
    index = "#{row},#{column}"
    board[index]
  end

  def board
    {
      "0,0" => "&#9814;",
      "0,1" => "&#9816;",
      "0,2" => "&#9815;",
      "0,3" => "&#9813;",
      "0,4" => "&#9812;",
      "0,5" => "&#9815;",
      "0,6" => "&#9816;",
      "0,7" => "&#9814;",
      "1,0" => "&#9817;",
      "1,1" => "&#9817;",
      "1,2" => "&#9817;",
      "1,3" => "&#9817;",
      "1,4" => "&#9817;",
      "1,5" => "&#9817;",
      "1,6" => "&#9817;",
      "1,7" => "&#9817;",

      "4,2" => "",

      "6,0" => "&#9823;",
      "6,1" => "&#9823;",
      "6,2" => "&#9823;",
      "6,3" => "&#9823;",
      "6,4" => "&#9823;",
      "6,5" => "&#9823;",
      "6,6" => "&#9823;",
      "6,7" => "&#9823;",
      "7,0" => "&#9820;",
      "7,1" => "&#9822;",
      "7,2" => "&#9821;",
      "7,3" => "&#9819;",
      "7,4" => "&#9818;",
      "7,5" => "&#9821;",
      "7,6" => "&#9822;",
      "7,7" => "&#9820;",

    }
  end


  def grey_or_white(row_count, column_count)
    # if row_count.even?
    #   "grey" if column_count.odd?
    # else
    #   "grey" if column_count.even?
    # end

    if (row_count + column_count).odd?
      "grey"
    end

  end
end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
