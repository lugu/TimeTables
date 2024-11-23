Class {
	#name : 'TTAnswerTest',
	#superclass : 'TestCase',
	#category : 'TimeTables-Tests',
	#package : 'TimeTables-Tests'
}

{ #category : 'tests' }
TTAnswerTest >> testAnswerComparison [
	| a1 a2 a3 |
	a1 := TTAnswer new response: 33.
	a2 := TTAnswer new response: 33.
	a3 := TTAnswer new response: 34.
	self assert: a1 equals: a2.
	self deny: a1 equals: a3.
]
