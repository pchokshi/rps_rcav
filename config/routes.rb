Rails.application.routes.draw do
get("/",        { :controller => "games", :action => "rock" })
get(":the_move", { :controller => "games", :action => "rock" })
get(":the_move", { :controller => "games", :action => "paper" })
get(":the_move", { :controller => "games", :action => "scissors" })
end
