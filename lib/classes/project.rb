module WistiaREST
  class Project < Wistia

    def list_project()
      url = "#{@@api_root_url}/projects.json?api_password=#{@@api_password}"
      JSON.parse(RestClient.get url)
    end

    def get_project(project_id)
      url = "#{@@api_root_url}/projects/#{project_id}.json?api_password=#{@@api_password}"
      JSON.parse(RestClient.get url)
    end

    def create_project(name)
      url = "#{@@api_root_url}/projects.json?api_password=#{@@api_password}"
      data = {"name" => name }
      JSON.parse(RestClient.post url,data)
    end

    def update_project(project_id,name)
      url = "#{@@api_root_url}/projects/#{project_id}.json?api_password=#{@@api_password}"
      data = {"name" => name }
      JSON.parse(RestClient.put url,data)
    end

    def delete_project(project_id)
      url = "#{@@api_root_url}/projects/#{project_id}.json?api_password=#{@@api_password}"
      JSON.parse(RestClient.delete url)
    end

  end
end