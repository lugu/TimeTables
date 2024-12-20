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

{ #category : 'accessing' }
TTAnswerPresenter >> button [
	^ answer
]

{ #category : 'layout' }
TTAnswerPresenter >> defaultLayout [
	^ SpBoxLayout newLeftToRight
		add: answer;
		yourself
]

{ #category : 'initialization' }
TTAnswerPresenter >> initializePresenters [
	answer := self newButton.
]

{ #category : 'initialization' }
TTAnswerPresenter >> onResponse: aBlockAcceptingAnAnswer [
	answer action: [ aBlockAcceptingAnAnswer value: self model ].
]

{ #category : 'accessing' }
TTAnswerPresenter >> setModel: anAnswer [
	answer label: anAnswer response.
	super setModel: anAnswer.
]
