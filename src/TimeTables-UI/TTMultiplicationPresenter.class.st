"
I represent a question with a label displaying the problem statement.
"
Class {
	#name : 'TTMultiplicationPresenter',
	#superclass : 'SpPresenterWithModel',
	#instVars : [
		'question',
		'grid'
	],
	#category : 'TimeTables-UI',
	#package : 'TimeTables-UI'
}

{ #category : 'layout' }
TTMultiplicationPresenter >> defaultLayout [
	^ SpBoxLayout newTopToBottom
		add: question expand: false;
		add: grid;
		yourself
]

{ #category : 'as yet unclassified' }
TTMultiplicationPresenter >> initializePresenter [
	question := self newLabel.
	grid := self instantiate: SpBlSpaceInMorphPresenter.
	self focusOrder
		add: grid;
		add: question.
]

{ #category : 'initialization' }
TTMultiplicationPresenter >> initializeWindow: aWindowPresenter [
	aWindowPresenter title: 'Multiplication question'
]

{ #category : 'initialization - deprecated' }
TTMultiplicationPresenter >> setGrid: aMultiplication [

	| space size childElements parentElement diameter color |
	self layout remove: grid.
	grid := self instantiate: SpBlSpaceInMorphPresenter.
	space := grid space.
	space root removeChildren.
	space clearDirtyElements.
	color := Color random.
	diameter := 30.
	size := (aMultiplication y * diameter) @  (aMultiplication x * diameter).
	childElements := aMultiplication x * aMultiplication y timesCollect: [ 
		BlElement new
		geometry: BlCircleGeometry new;
		background: color;
		size: diameter @ diameter
	].
	parentElement := BlElement new
		background: Color transparent;
		layout: BlFlowLayout new;
		addChildren: childElements;
		size: size.
	
	space root addChild: parentElement;
		background: Color transparent.
	space root size: size.
	space extent: size.
	self layout add: grid.
]

{ #category : 'initialization - deprecated' }
TTMultiplicationPresenter >> setModel: aMultiplication [
	question label: aMultiplication problemStatement.
	self setGrid: aMultiplication.
	super setModel: aMultiplication
]
