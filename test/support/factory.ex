defmodule NflRushingBackend.Factory do
    use ExMachina.Ecto, repo: Todos.Repo

    def player_factory do

        %NflRushingBackend.Player{
            player: "Ali",
            team: "theScore",
            position: "LineBacker",
            attempts: 5,
            attemptspergame: 4.5,
            yards: 4.0,
            avg: 5.5,
            yardspergame: 5.5,
            touchdowns: 5,
            longestrush: 5,
            firstdown: 5,
            firstdownpercentage: 4.0,
            twentyyards: 5,
            fortyyards: 5,
            fumbles: 5
        }
    end

end