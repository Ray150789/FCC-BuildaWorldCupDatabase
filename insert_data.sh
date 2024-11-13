#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then

    if [[ -z $YEAR ]]
    the
      # insert team
      INSERT_TEAM_NAME=$($PSQL "INSERT INTO teams(team) VALUES('$NAME')")
      if [[ $INSERT_TEAM_NAME == "INSERT 0 1" ]]
      then
        echo Inserted into teams, $NAME
      fi

done