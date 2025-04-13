require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/rock") do #Rock page route

  moves = ["Rock", "Paper", "Scissors"]

  @comp_move = moves.sample

  if @comp_move == "Rock"
    @outcome = "Tied"

elsif @comp_move == "Paper"
  @outcome = "Lost"
else
  @outcome = "Won"
end

erb(:zebra)

end

get("/paper") do #Paper page route

  moves = ["Rock", "Paper", "Scissors"]

  @comp_move = moves.sample

  if @comp_move == "Rock"
    @outcome = "Won"

elsif @comp_move == "Paper"
  @outcome = "Tied"
else
  @outcome = "Lost"
end

erb(:giraffe)

end

get("/scissors") do #Scissors Page route

  moves = ["Rock", "Paper", "Scissors"]

  @comp_move = moves.sample

  if @comp_move == "Rock"
    @outcome = "Lost"

elsif @comp_move == "Paper"
  @outcome = "Won"
else
  @outcome = "Tied"
end

erb(:monkey)

end
