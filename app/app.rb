class P360flats < Padrino::Application
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers

  enable :sessions
  layout :base

  ##
  # Caching support
  #
  # register Padrino::Cache
  # enable :caching
  #
  # You can customize caching store engines:
  #
  #   set :cache, Padrino::Cache::Store::Memcache.new(::Memcached.new('127.0.0.1:11211', :exception_retry_limit => 1))
  #   set :cache, Padrino::Cache::Store::Memcache.new(::Dalli::Client.new('127.0.0.1:11211', :exception_retry_limit => 1))
  #   set :cache, Padrino::Cache::Store::Redis.new(::Redis.new(:host => '127.0.0.1', :port => 6379, :db => 0))
  #   set :cache, Padrino::Cache::Store::Memory.new(50)
  #   set :cache, Padrino::Cache::Store::File.new(Padrino.root('tmp', app_name.to_s, 'cache')) # default choice
  #

  ##
  # Application configuration options
  #
  # set :raise_errors, true       # Raise exceptions (will stop application) (default for test)
  # set :dump_errors, true        # Exception backtraces are written to STDERR (default for production/development)
  # set :show_exceptions, true    # Shows a stack trace in browser (default for development)
  # set :logging, true            # Logging in STDOUT for development and file for production (default only for development)
  # set :public_folder, "foo/bar" # Location for static assets (default root/public)
  # set :reload, false            # Reload application files (default in development)
  # set :default_builder, "foo"   # Set a custom form builder (default 'StandardFormBuilder')
  # set :locale_path, "bar"       # Set path for I18n translations (default your_app/locales)
  # disable :sessions             # Disabled sessions by default (enable if needed)
  # disable :flash                # Disables sinatra-flash (enabled by default if Sinatra::Flash is defined)
  # layout  :my_layout            # Layout can be in views/layouts/foo.ext or views/foo.ext (default :application)
  #

  ##
  # You can configure for a specified environment like:
  #
  #   configure :development do
  #     set :foo, :bar
  #     disable :asset_stamp # no asset timestamping for dev
  #   end
  #

  ##
  # You can manage errors like:
  #
  #   error 404 do
  #     render 'errors/404'
  #   end
  #
  #   error 505 do
  #     render 'errors/505'
  #   end
  #
  get "/" do
    @items = [
      {"title" => "2BHK in Vishrantwadi", "price" => 2, "size" => 2000,  "distance" => 2.5, "thumb" => "http://farm9.staticflickr.com/8392/8519688747_2ece00a465.jpg"},
      {"title" => "2BHK in Kalyaninagar", "price" => 1.5, "size" => 1200,  "distance" => 1.5, "thumb" => "http://farm9.staticflickr.com/8390/8520757204_b981bae205.jpg"},
      {"title" => "2BHK in Koregaonpark", "price" => 3, "size" => 2000,  "distance" => 0.75, "thumb" => "http://farm9.staticflickr.com/8247/8519654021_867a38aaf4.jpg"},
      {"title" => "2BHK in Wakad", "price" => 2.5, "size" => 1200,  "distance" => 0.5, "thumb" => "http://farm9.staticflickr.com/8092/8520772284_714ef01fd4.jpg"}
    ]
    haml :index
  end

  get "/details" do
    render "details"
  end
end
