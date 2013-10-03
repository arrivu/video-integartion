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

    # if response["activation"].nil? 
    #   response #sukumar@gmail.com is already shared on this project
    # else
    #   response["activation"] #http://sukumar-inapp.wistia.com/activate/a1c8d52f04
    #   res.headers[:Location]
    # end
    def share_project(project_id,email,requirePassword=0)
      begin
        url = "#{@@api_root_url}/projects/#{project_id}/sharings.json?api_password=#{@@api_password}"
        data = {"with" => email,"requirePassword" => requirePassword }
        response=RestClient.post url,data
      rescue => e
        e.response
      end
    end

    #https://api.wistia.com/v1/projects/<project-id>/sharings/<sharing-id>.json
    #url=https://api.wistia.com/v1/projects/476181/sharings/1001407
    def delete_share_project(url)
      url ="#{url}?api_password=#{@@api_password}"
      response=RestClient.delete url
    end

  end
end