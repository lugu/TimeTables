Class {
	#name : 'TTTablesTest',
	#superclass : 'TestCase',
	#category : 'TimeTables-Tests',
	#package : 'TimeTables-Tests'
}

{ #category : 'tests' }
TTTablesTest >> testTableContainsTenMultiplications [
	| table |
	table := TTTable ofNumber: 12.
	self assert: table questions size equals: 10.
]
