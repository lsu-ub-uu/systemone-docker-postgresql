#!/bin/bash
set -e

function run_sql () {
   for SQL in "$1"/*
	do
 	 echo "Run file: $SQL"
  		psql -v ON_ERROR_STOP=1 -U systemone systemone < $SQL > $SQL.log
	done
}

echo ""
echo "Import metadata"
run_sql "dbfiles/cora"
run_sql "dbfiles/jsClient"
run_sql "dbfiles/systemOne"
run_sql "dbfiles/testSystem"
