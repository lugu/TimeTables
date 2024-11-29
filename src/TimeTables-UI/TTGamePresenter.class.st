"
I am the top containter of the time table UI. I display questions one after another.
"
Class {
	#name : 'TTGamePresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'question',
		'game'
	],
	#category : 'TimeTables-UI',
	#package : 'TimeTables-UI'
}

{ #category : 'initialization' }
TTGamePresenter class >> tableOf: aNumber [
	^ self basicNew initialize: (TTGame tableOf: aNumber)	
	
]

{ #category : 'accessing' }
TTGamePresenter >> congratulationScreen [
	| alert |
	self layout remove: question.
	alert := self instantiate: 	TTAlertPresenter.
	alert 	textMessage: 'Congratulation' buttonLabel: 'Restart!' action: [
			self layout remove: alert.
			self nextGame.
	].
	self layout add: alert.
	^ self

]

{ #category : 'initialization' }
TTGamePresenter >> connectPresenters [
	self nextQuestion
]

{ #category : 'layout' }
TTGamePresenter >> defaultLayout [
	^ SpBoxLayout newTopToBottom
		add: question;
		yourself
]

{ #category : 'accessing' }
TTGamePresenter >> game: aGame [

	game := aGame.
]

{ #category : 'initialization' }
TTGamePresenter >> initialize [
	game ifNil: [ self newGame ].
	super initialize.
]

{ #category : 'accessing' }
TTGamePresenter >> initialize: aGame [
	self game: aGame; initialize.
]

{ #category : 'initialization - deprecated' }
TTGamePresenter >> initializePresenters [
	question := self instantiate: TTQuestionPresenter.
	self focusOrder
		add: question.
]

{ #category : 'initialization' }
TTGamePresenter >> initializeWindow: aWindowPresenter [
	aWindowPresenter title: 'Time tables'.
]

{ #category : 'initialization' }
TTGamePresenter >> newGame [
	game :=  TTGame tableOf: (1 to: 9) atRandom.
]

{ #category : 'initialization' }
TTGamePresenter >> nextGame [
	self newGame.
	self initializePresenters.
	self layout add: question.
	self nextQuestion.
]

{ #category : 'accessing' }
TTGamePresenter >> nextQuestion [
	game isFinished 
		ifTrue: [ self congratulationScreen ]
		ifFalse: [ 
		| multiplication |
		multiplication := game openQuestions atRandom.
		question setQuestion: multiplication.
		question onResponse: [ :answer |
			game respondTo: multiplication with: answer.
			self nextQuestion
		].
	]

]
