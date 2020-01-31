defmodule NflRushingBackend.PlayerControllerTest do
    use NflRushingBackendWeb.ConnCase

    test '#index renders a list of players' do
        conn = build_conn()
        player = insert( => player.

        conn = get conn, todo_path(conn, :index)

        assert json_response(conn, 200) == %{
            "players" => [%{
                "player" => player.player,
                "team" => player.team,
                "position" => player.position,
                "attempts" => player.attempts,
                "attemptspergame" => player.attemptspergame,
                "yards" => player.yards,
                "avg" => player.avg,
                "yardspergame" => player.yardspergame,
                "touchdowns" => player.touchdowns,
                "longestrush" => player.longestrush,
                "firstdown" => player.firstdown,
                "firstdownpercentage" => player.firstdownpercentage,
                "twentyyards" => player.twentyyards,
                "fortyyards" => player.fortyyards,
                "fumbles" => player.fumbles
            }]
        }

    end

end