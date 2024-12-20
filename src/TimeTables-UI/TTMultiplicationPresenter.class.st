"
I represent a question with a label displaying the problem statement.
"
Class {
	#name : 'TTMultiplicationPresenter',
	#superclass : 'SpPresenterWithModel',
	#instVars : [
		'question',
		'visual'
	],
	#category : 'TimeTables-UI',
	#package : 'TimeTables-UI'
}

{ #category : 'layout' }
TTMultiplicationPresenter >> defaultLayout [
	^ SpBoxLayout newTopToBottom
		spacing: 40;
		add: question expand: false;
		add: visual;
		yourself
]

{ #category : 'initialization - deprecated' }
TTMultiplicationPresenter >> initializePresenters [
	"question := self newLabel."
	question := self instantiate: TTBlElementPresenter.
	visual := self instantiate: TTMultiplicationVisualPresenter.
	self focusOrder
		add: visual;
		add: question.
]

{ #category : 'transmission' }
TTMultiplicationPresenter >> setModel: aMultiplication [
	| textElement |
	textElement := BlTextElement new
		defaultFontSize: 22;
		 text: aMultiplication problemStatement asRopedText.
	question element: textElement.
	"question label: aMultiplication problemStatement."
	visual x: aMultiplication x y: aMultiplication y.
	super setModel: aMultiplication
]
