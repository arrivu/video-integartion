module WistiaREST
  class Project < Wistia

    def create_project(name)
      url = "#{@@api_root_url}/projects.json?api_password=#{@@api_password}"
      data = {"name" => name }
      puts "ok"
      puts JSON.parse(RestClient.post url,data)
    end

  end
end