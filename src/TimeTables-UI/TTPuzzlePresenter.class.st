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
	background := aForm.
	background addChildren: pieces.
	puzzle element: background.
]

{ #category : 'initialization' }
TTPuzzlePresenter >> defaultBackground [
	| form |
	form := ImageReadWriter formFromStream: '/home/ludo/elephant.jpg' asFileReference binaryReadStream.
	^ BlImageBackground new
		image: form.
]

{ #category : 'layout' }
TTPuzzlePresenter >> defaultLayout [
	^ SpBoxLayout newTopToBottom
		add: puzzle;
		yourself
]

{ #category : 'initialization' }
TTPuzzlePresenter >> initializePresenter [
	puzzle := self instantiate: TTBlElementPresenter.
	pieces := 10 timesCollect: [ self makePiece ].
	self background: self defaultBackground.
]

{ #category : 'initialization' }
TTPuzzlePresenter >> initializeWindow: aWindowPresenter [
	aWindowPresenter title: 'Puzzle'
]

{ #category : 'initialization' }
TTPuzzlePresenter >> makeBackground [
	"delete me"
	self halt.
]

{ #category : 'initialization' }
TTPuzzlePresenter >> makePiece [
	^ BlElement new
		background: Color random;
		size: 100@100;
		geometry: BlRectangleGeometry new;
		position: 100 atRandom @ 100 atRandom
]
