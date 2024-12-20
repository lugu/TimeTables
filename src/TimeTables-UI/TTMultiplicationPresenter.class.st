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
		add: question expand: false;
		add: visual;
		yourself
]

{ #category : 'initialization - deprecated' }
TTMultiplicationPresenter >> initializePresenters [
	question := self newLabel.
	visual := self instantiate: TTMultiplicationVisualPresenter.
	self focusOrder
		add: visual;
		add: question.
]

{ #category : 'transmission' }
TTMultiplicationPresenter >> setModel: aMultiplication [
	question label: aMultiplication problemStatement.
	visual x: aMultiplication x y: aMultiplication y.
	super setModel: aMultiplication
]
