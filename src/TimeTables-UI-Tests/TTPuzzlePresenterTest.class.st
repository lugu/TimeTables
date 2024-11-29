Class {
	#name : 'TTPuzzlePresenterTest',
	#superclass : 'TestCase',
	#category : 'TimeTables-UI-Tests',
	#package : 'TimeTables-UI-Tests'
}

{ #category : 'tests' }
TTPuzzlePresenterTest >> testOpenClose [
	TTPuzzlePresenter new
		open;
		delete.
]

{ #category : 'tests' }
TTPuzzlePresenterTest >> testRemovePieces [
	| presenter |
	presenter := TTPuzzlePresenter new.
	(1 to: 10) do: [ :each | 
		presenter removeOnePiece.
		self assert: presenter numberOfPieces equals: (10 - each). 
	].
	self assert: presenter numberOfPieces equals: 0
]
