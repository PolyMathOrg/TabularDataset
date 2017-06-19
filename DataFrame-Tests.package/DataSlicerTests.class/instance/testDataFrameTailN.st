tests
testDataFrameTailN

	| df slice dfExpected |
	df := DataFrame rows: 
		((1 to: 20) collect: [ :i |
			{ i * 10 . i * 100 } ]).
	
	slice := df tail: 3.

	self assert: (slice isKindOf: DataFrame).
	
	dfExpected := DataFrame rows:
		((df size - 3 + 1 to: df size)
			collect: [ :i |
				{ i * 10 . i * 100 } ]).
			
	self assert: slice equals: dfExpected.