ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PhoenixExfileTestApp.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PhoenixExfileTestApp.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PhoenixExfileTestApp.Repo)

