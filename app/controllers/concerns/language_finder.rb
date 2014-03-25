class LanguageFinder
  attr_reader :user
  def initialize(params)
    @user = params.fetch(:user)
  end
  
  def find
    response = HttpClient.new({
      user: @user
    }).send_get_request
    if response.code == "200"
      data = JSON.parse(response.body)
      if data.empty?
        "Couldn't find anything. Maybe user don't have any projects"
      else
        language = data.map { |repo| repo["language"]}.group_by { |language| language }.values.max_by(&:size).first
        "I found the most popular language. It is #{language}"
      end
    else
      data = JSON.parse(response.body)
      "GitHub returned error. Error text: #{data["message"]}"
    end
  end
end
