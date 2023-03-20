class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================
def play_rock
  # redirect_to("") will redirect to any url you put in there
  render({:template => "game_template/user_rock.html.erb"})

  #:template=>
  #.html_safe ruby saving us from ppl injecting bad html
  #.erb is an embedded ruby template
end
end
