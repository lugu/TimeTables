"
I am the top containter of the time table UI. I display questions one after another.
"
Class {
	#name : 'TTGamePresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'question',
		'game',
		'puzzle',
		'onFinishBlock'
	],
	#category : 'TimeTables-UI',
	#package : 'TimeTables-UI'
}

{ #category : 'accessing' }
TTGamePresenter >> congratulationScreen [
	| alert |
	self layout remove: question.
	alert := self instantiate: 	TTAlertPresenter.
	alert 	textMessage: 'Congratulation' buttonLabel: 'Restart!' action: [
			onFinishBlock
				ifNotNil: [ onFinishBlock value ].
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
	^ SpBoxLayout newLeftToRight
		add: question;
		add: puzzle;
		yourself
]

{ #category : 'initialization' }
TTGamePresenter >> initializePresenters [
	game := TTGame size: 16.
	question := self instantiate: TTQuestionPresenter.
	puzzle := self instantiate: TTPuzzlePresenter.
	self focusOrder
		add: question;
		add: puzzle.
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
			(game respondTo: multiplication with: answer) ifTrue: [ puzzle removeOnePiece ].
			self nextQuestion
		].
	].
	^ self

]

{ #category : 'initialization' }
TTGamePresenter >> onFinishedDo: aBlock [
	onFinishBlock := aBlock
]
