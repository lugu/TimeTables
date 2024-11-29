Class {
	#name : 'TTPuzzlePresenterTest',
	#superclass : 'TestCase',
	#category : 'TimeTables-UI-Tests',
	#package : 'TimeTables-UI-Tests'
}

{ #category : 'tests' }
TTPuzzlePresenterTest >> testAddPieces [
	| presenter |
	presenter := TTPuzzlePresenter new.
	presenter size: 5@5.
	(1 to: 25) do: [ :each | 
		presenter removeOnePiece.
		self assert: presenter numberOfPieces equals: (25 - each). 
	].
	self assert: presenter numberOfPieces equals: 0.
	(1 to: 25) do: [ :each | 
		presenter addOnePiece.
		self assert: presenter numberOfPieces equals: each. 
	].
]

{ #category : 'tests' }
TTPuzzlePresenterTest >> testRemovePieces [
	| presenter |
	presenter := TTPuzzlePresenter new.
	presenter size: 5@5.
	(1 to: 25) do: [ :each | 
		presenter removeOnePiece.
		self assert: presenter numberOfPieces equals: (25 - each). 
	].
	self assert: presenter numberOfPieces equals: 0
]

{ #category : 'tests' }
TTPuzzlePresenterTest >> testResize [
	| presenter |
	presenter := TTPuzzlePresenter new.
	presenter size: 3@3.
	self assert: presenter numberOfPieces equals: 9.
	presenter size: 10@3.
	self assert: presenter numberOfPieces equals: 30.
]
