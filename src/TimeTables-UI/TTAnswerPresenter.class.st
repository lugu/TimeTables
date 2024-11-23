"
I am the visual representation of a question in a game.
"
Class {
	#name : 'TTAnswerPresenter',
	#superclass : 'SpPresenterWithModel',
	#instVars : [
		'answer'
	],
	#category : 'TimeTables-UI',
	#package : 'TimeTables-UI'
}

{ #category : 'as yet unclassified' }
TTAnswerPresenter >> button [
	^ answer
]

{ #category : 'layout' }
TTAnswerPresenter >> defaultLayout [
	^ SpBoxLayout newLeftToRight
		add: answer expand: false;
		yourself
]

{ #category : 'initialization' }
TTAnswerPresenter >> initializePresenters [
	answer := self newButton.
]

{ #category : 'initialization' }
TTAnswerPresenter >> initializeWindow: aWindowPresenter [
	aWindowPresenter title: 'Answer'.
]

{ #category : 'as yet unclassified' }
TTAnswerPresenter >> onResponse: aBlockAcceptingAnAnswer [
	answer action: [ aBlockAcceptingAnAnswer value: self model ].
]

{ #category : 'as yet unclassified' }
TTAnswerPresenter >> onSelect: aBlock [
	answer action: aBlock
]

{ #category : 'as yet unclassified' }
TTAnswerPresenter >> setModel: anAnswer [
	answer label: anAnswer response.
	super setModel: anAnswer.
]
