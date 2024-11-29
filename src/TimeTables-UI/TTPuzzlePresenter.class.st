"
I represent a obstructed image that is cleared as the player succeded to answer questions.
"
Class {
	#name : 'TTPuzzlePresenter',
	#superclass : 'SpPresenterWithModel',
	#instVars : [
		'background',
		'pieces',
		'form',
		'size',
		'puzzle'
	],
	#category : 'TimeTables-UI',
	#package : 'TimeTables-UI'
}

{ #category : 'initialization' }
TTPuzzlePresenter >> addOnePiece [

	| randomPiece |
	(pieces anySatisfy: [ :each | each background isTransparent ])
		ifFalse: [ ^ self ].
	randomPiece := (pieces select: [ :each |
		                each background isTransparent ]) atRandom.
	randomPiece background: Color random.
]

{ #category : 'accessing' }
TTPuzzlePresenter >> background: aForm [
	form := aForm.
	self resetBackground.
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
TTPuzzlePresenter >> defaultSize [
	^ 4 @ 4
]

{ #category : 'initialization' }
TTPuzzlePresenter >> initialize [
	size := self defaultSize.
	form := self defaultBackgroundForm.
	super initialize.
]

{ #category : 'initialization' }
TTPuzzlePresenter >> initializePresenters [
	puzzle := self instantiate: TTBlElementPresenter.
	self resetBackground.
	self resetPieces.
]

{ #category : 'initialization' }
TTPuzzlePresenter >> initializeWindow: aWindowPresenter [
	aWindowPresenter title: 'Puzzle'
]

{ #category : 'initialization' }
TTPuzzlePresenter >> makePiece [
	^ BlElement new
		background: Color random;
		size: self pieceSize;
		geometry: BlRectangleGeometry new
]

{ #category : 'initialization' }
TTPuzzlePresenter >> numberOfPieces [
	^ (pieces reject: [ :each | each background isTransparent ]) size
]

{ #category : 'initialization' }
TTPuzzlePresenter >> pieceSize [
	^ form extent / size.
]

{ #category : 'initialization' }
TTPuzzlePresenter >> removeOnePiece [

	| randomPiece |
	(pieces noneSatisfy: [ :each | each background isTransparent not ])
		ifTrue: [ ^ self ].
	randomPiece := (pieces reject: [ :each |
		                each background isTransparent ]) atRandom.
	randomPiece background: Color transparent
]

{ #category : 'accessing' }
TTPuzzlePresenter >> resetBackground [
	background := BlElement new
		background: (BlImageBackground new image: form);
		layout: BlFlowLayout new;
		size: form extent.
	pieces ifNotNil: [ background addChildren: pieces].
	puzzle element: background.
]

{ #category : 'initialization' }
TTPuzzlePresenter >> resetPieces [
	pieces := (size x * size y) timesCollect: [
			self makePiece
	].
	background removeChildren.
	background addChildren: pieces
]

{ #category : 'initialization' }
TTPuzzlePresenter >> size: aSizeInPieces [
	size := aSizeInPieces.
	self resetPieces.
]
