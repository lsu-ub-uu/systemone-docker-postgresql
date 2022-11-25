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
run_sql "storagefiles/cora"
run_sql "storagefiles/jsClient"
run_sql "storagefiles/systemOne"
run_sql "storagefiles/testSystem"
