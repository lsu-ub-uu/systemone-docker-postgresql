#!/bin/bash
dataDividers="cora jsClient systemOne testSystem"

importForDataDivider () {
	for SQL in "$1"/* 
		do
			echo ""
			echo "Run SQL file: $SQL"
			psql -v ON_ERROR_STOP=1 -U systemone systemone < $SQL > $SQL.log
		done
}

start(){
	for dataDivider in $dataDividers ; do
		echo "Importing dataDivider: "$dataDivider
		importForDataDivider "dbfiles/"$dataDivider
	done
}

start