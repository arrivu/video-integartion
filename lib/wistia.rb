#gem build wistia.gemspec
#gem install wistia-0.0.0.gem
#project=WistiaREST::Project.new
#project.set_token
#p=project.create_project("Java")
require 'rest_client'
require 'json'

class Wistia

  def set_token(api_password = "e4ebf54730a604cf47aa26c52968fcc6e6281fcc", api_root_url = "https://api.wistia.com/v1")
    @@api_password = api_password
    @@api_root_url = api_root_url
  end
  
end

Dir[File.dirname(__FILE__) + "/classes/*.rb"].each { |file| require file }