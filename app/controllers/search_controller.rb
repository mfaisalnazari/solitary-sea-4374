class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: "https://last-airbender-api.fly.dev")

    response = conn.get("/api/v1/characters?affiliation=#{params[:nation]}")
                @data = JSON.parse(response.body, symbolize_names: true)
    
    @members = @data.map { |member_data| Member.new(member_data) }
    @count = @members.count
    # binding.pry

               
  end
end



# https://last-airbender-api.fly.dev/api/v1/characters?affiliation=Fire+Nation