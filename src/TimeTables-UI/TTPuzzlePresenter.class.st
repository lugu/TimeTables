"
I represent a obstructed image that is cleared as the player succeded to answer questions.
"
Class {
	#name : 'TTPuzzlePresenter',
	#superclass : 'SpPresenterWithModel',
	#instVars : [
		'background',
		'pieces',
		'puzzle'
	],
	#category : 'TimeTables-UI',
	#package : 'TimeTables-UI'
}

{ #category : 'accessing' }
TTPuzzlePresenter >> background: aForm [
	background := BlElement new
		background: (BlImageBackground new image: aForm).
	background addChildren: pieces.
	puzzle element: background.
]

{ #category : 'initialization' }
TTPuzzlePresenter >> defaultBackgroundForm [
	^ ImageReadWriter formFromStream: '/home/ludo/elephant.jpg' asFileReference binaryReadStream
]

{ #category : 'layout' }
TTPuzzlePresenter >> defaultLayout [
	^ SpBoxLayout newTopToBottom
		add: puzzle;
		yourself
]

{ #category : 'initialization' }
TTPuzzlePresenter >> initializePresenters [
	puzzle := self instantiate: TTBlElementPresenter.
	pieces := 10 timesCollect: [ self makePiece ].
	self background: self defaultBackgroundForm.
]

{ #category : 'initialization' }
TTPuzzlePresenter >> initializeWindow: aWindowPresenter [
	aWindowPresenter title: 'Puzzle'
]

{ #category : 'initialization' }
TTPuzzlePresenter >> makePiece [
	^ BlElement new
		background: Color random;
		size: 100@100;
		geometry: BlRectangleGeometry new;
		position: 100 atRandom @ 100 atRandom
]

{ #category : 'initialization' }
TTPuzzlePresenter >> numberOfPieces [
	^ pieces size.
]

{ #category : 'initialization' }
TTPuzzlePresenter >> removeOnePiece [
	pieces isEmpty ifTrue: [ ^self ].
	background removeChild: pieces last.
	pieces := pieces allButLast
]
