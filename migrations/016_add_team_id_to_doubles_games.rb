Sequel.migration do

  up do
    alter_table :doubles_games do
      add_column :winner_team_id, Integer
      add_column :loser_team_id, Integer
    end
  end

  down do
    alter_table :doubles_games do
      drop_column :winner_team_id
      drop_column :loser_team_id
    end
  end

end
