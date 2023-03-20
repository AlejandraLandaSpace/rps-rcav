class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================
def homepage
  render({ :template=>"game_template/rules.html.erb"})
end
def play_rock
  # redirect_to("") will redirect to any url you put in there
  render({:template => "game_template/user_rock.html.erb"})

  #:template=>
  #.html_safe ruby saving us from ppl injecting bad html
  #.erb is an embedded ruby template
end
def play_paper
 @comp_move = ["rock", "paper", "scissors"].sample

   if @comp_move == "rock" 
    @outcome = "won"
   elsif @comp_move == "paper" 
    @outcome = "tied"
  elsif @omp_move == "scissors" 
    @outcome = "lost"
   end

  render({:template => "game_template/user_paper.html.erb"})
end
end
