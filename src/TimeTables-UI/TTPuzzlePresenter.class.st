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
TTPuzzlePresenter >> backgroundUrls [
	^ { 
		'https://github.com/lugu/TimeTables/blob/master/pics/African%20Lion.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/Alpaca.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/American%20Flamingo.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/Black-and-white%20Ruffed%20Lemur.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/Brazillian%20Agouti.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/California%20Sea%20Lion.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/Cheetah.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/Eld''s%20Deer.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/Fennec%20Fox.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/Fly%20River%20Turtle.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/Giant%20Anteater.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/Giant%20Panda.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/Golden%20Lion%20Tamarin.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/La%20Plata%20Three-banded%20Armadillo.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/Lowland%20Gorilla.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/North%20American%20Wood%20Duck.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/Elephant.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/Zebra.jpg?raw=true'.
		'https://github.com/lugu/TimeTables/blob/master/pics/Sumatran%20Tiger.jpg?raw=true'.
	}
]

{ #category : 'layout' }
TTPuzzlePresenter >> defaultLayout [
	^ SpBoxLayout newTopToBottom
		add: puzzle expand: true;
		yourself
]

{ #category : 'initialization' }
TTPuzzlePresenter >> defaultSize [
	^ 4 @ 4
]

{ #category : 'initialization' }
TTPuzzlePresenter >> initialize [
	size := self defaultSize.
	form := self randomBackgroundForm.
	super initialize.
]

{ #category : 'initialization' }
TTPuzzlePresenter >> initializePresenters [
	puzzle := self instantiate: TTBlElementPresenter.
	self resetBackground.
	self resetPieces.
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
TTPuzzlePresenter >> randomBackgroundForm [
	^ ZnEasy getJpeg: self backgroundUrls atRandom

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
